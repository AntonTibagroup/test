Write-Host "=== DEPLOY STARTED ==="

$dacpac = "bin\Release\Nexus.dacpac"

if (-not (Test-Path $dacpac)) {
    Write-Error "DACPAC not found. Run build first."
    exit 1
}

$connectionString = "Server=.;Database=Nexus_local;Integrated Security=True;TrustServerCertificate=True"

$vswhere = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"

$sqlpackage = $null

if (Test-Path $vswhere) {
    $installationPath = & $vswhere `
        -latest `
        -products Microsoft.VisualStudio.Product.* `
        -prerelease `
        -property installationPath

    if ($installationPath) {
        $sqlpackage = Get-ChildItem $installationPath -Recurse -Filter SqlPackage.exe -ErrorAction SilentlyContinue |
                      Where-Object { $_.FullName -like "*SQLDB\DAC*" } |
                      Select-Object -First 1 -ExpandProperty FullName
    }
}

#  fallback
if (-not $sqlpackage) {
    $sqlpackage = "C:\Program Files\Microsoft Visual Studio\18\Insiders\Common7\IDE\Extensions\Microsoft\SQLDB\DAC\SqlPackage.exe"
}

#  безопасная проверка
if (-not $sqlpackage -or -not (Test-Path $sqlpackage)) {
    Write-Error "SqlPackage not found"
    exit 1
}

Write-Host "Using SqlPackage: $sqlpackage"

& $sqlpackage /Action:Publish `
  /SourceFile:$dacpac `
  /TargetConnectionString:$connectionString `
  /p:BlockOnPossibleDataLoss=true `
  /p:DropObjectsNotInSource=false

if ($LASTEXITCODE -ne 0) {
    Write-Error "Deploy failed"
    exit 1
}

Write-Host "=== DEPLOY SUCCESS ==="