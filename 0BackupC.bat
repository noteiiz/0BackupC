@echo off

echo Make it easy to Copy 0BackupC
echo By N'Note

set /p userName=Enter your user name:

set sourcePath1=C:\Users\%userName%\Favorites
set sourcePath2=C:\Users\%userName%\AppData\Local\Google
set sourcePath3=C:\Users\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
set sourcePath4=C:\Users\%userName%\AppData\Roaming\Microsoft\signatures
set sourcePath5=C:\Desktop
set sourcePath6=C:\Users\%userName%\AppData\Roaming\Microsoft\Excel

set destinationPath1=D:\0BackupC\%userName%\Favorites
set destinationPath2=D:\0BackupC\%userName%\AppData\Local\Google
set destinationPath3=D:\0BackupC\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
set destinationPath4=D:\0BackupC\%userName%\AppData\Roaming\Microsoft\signatures
set destinationPath5=D:\0BackupC\Desktop
set destinationPath6=D:\0BackupC\%userName%\AppData\Roaming\Microsoft\Excel

if exist "%sourcePath1%" (
    xcopy "%sourcePath1%" "%destinationPath1%" /E /I
    echo "Favorites is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "Favorites not found we skip it" >>0BackupC_Log.txt
    pause
)

if exist "%sourcePath2%" (
    xcopy "%sourcePath2%" "%destinationPath2%" /E /I
    echo "AppData\Local\Google is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "AppData\Local\Google not found we skip it" >>0BackupC_Log.txt
    pause
)

if exist "%sourcePath3%" (
    xcopy "%sourcePath3%" "%destinationPath3%" /E /I
    echo "AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe not found we skip it" >>0BackupC_Log.txt
    pause
)

if exist "%sourcePath4%" (
    xcopy "%sourcePath4%" "%destinationPath4%" /E /I
    echo "AppData\Roaming\Microsoft\signatures is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "AppData\Roaming\Microsoft\signatures not found we skip it" >>0BackupC_Log.txt
    pause
)

if exist "%sourcePath5%" (
    xcopy "%sourcePath5%" "%destinationPath5%" /E /I
    echo "Desktop is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "Desktop not found we skip it" >>0BackupC_Log.txt
    pause
)

if exist "%sourcePath6%" (
    xcopy "%sourcePath6%" "%destinationPath6%" /E /I 
    echo "AppData\Roaming\Microsoft\Excel is copy Done" >>0BackupC_Log.txt
    pause
) else (
    echo "AppData\Roaming\Microsoft\Excel not found we skip it" >>0BackupC_Log.txt
    pause
)
