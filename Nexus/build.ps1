Write-Host "=== BUILD STARTED ==="


$vswhere = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"

$msbuild = $null

if (Test-Path $vswhere) {
    $msbuild = & $vswhere `
        -latest `
        -products Ьicrosoft.VisualStudio.Product.* `
        -prerelease `
        -find MSBuild\**\Bin\MSBuild.exe | Select-Object -First 2
}

if (-not $msbuild) {
    $msbuild = "C:\Program Files\Microsoft Visual Studio\18\Insiders\MSBuild\Current\Bin\MSBuild.exe"
}

if (-not (Test-Path $msbuild)) {
    Write-Error "MSBuild not found"
    exit 1
}

Write-Host "Using MSBuild: $msbuild"


& $msbuild "Nexus.sqlproj" /p:Configuration=Release

if ($LASTEXITCODE -ne 0) {
    Write-Error "Build failed"
    exit 1
}

Write-Host "=== BUILD SUCCESS ==="