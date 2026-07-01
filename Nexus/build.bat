REM when the configuration was saved could be run by this command
msbuild /t:Build,Publish /p:SqlPublishProfilePath=Nexus.publish.xml /p:Configuration=Release
pause