@echo off
echo Copying files and folders from Dir C:\jenkins-dev\workspace\DEV\Ceroc-Admin-API\BookingzApp_Admin\bin\Debug\net6.0 to Dir C:\inetpub\wwwroot\Ceroc-AdminApi

echo website stopped "ceroc-admin-devvenueapi"

NET STOP w3svc
C:\Windows\System32\inetsrv\appcmd stop site /site.name:"ceroc-admin-devvenueapi"

:: Set the source and destination directories
set "sourceDir=C:\jenkins-dev\workspace\DEV\Ceroc-Admin-API\BookingzApp_Admin\bin\Debug\net6.0"
set "destinationDir=C:\inetpub\wwwroot\Ceroc-AdminApi"

:: Ensure the destination directory exists, create if not
if not exist "%destinationDir%" mkdir "%destinationDir%"

:: Copy files and folders recursively
xcopy "%sourceDir%\*" "%destinationDir%\" /E /I /Y

echo Copy completed.

NET START w3svc
C:\Windows\System32\inetsrv\appcmd start site /site.name:"ceroc-admin-devvenueapi"

echo Website restarted "ceroc-admin-devvenueapi"
