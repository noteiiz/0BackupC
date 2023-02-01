@echo off
set /p userName=Enter the username:
echo [%date% %time%] Starting the backup process... >> "0BackupC.txt"

:: Copy Desktop
if exist "C:\Desktop" (
    robocopy "C:\Desktop" "D:\0BackupC\Desktop" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\Desktop copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\Desktop copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Desktop not found." >> "0BackupC.txt"
)

:: Copy Favorites
if exist "C:\Users\%userName%\Favorites" (
    robocopy "C:\Users\%userName%\Favorites" "D:\0BackupC\%userName%\Favorites" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\%userName%\Favorites copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\%userName%\Favorites copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Users\%userName%\Favorites not found." >> "0BackupC.txt"
)

:: Copy Google
if exist "C:\Users\%userName%\AppData\Local\Google" (
    robocopy "C:\Users\%userName%\AppData\Local\Google" "D:\0BackupC\%userName%\AppData\Local\Google" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Local\Google copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Local\Google copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Users\%userName%\AppData\Local\Google not found." >> "0BackupC.txt"
)

:: Copy Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
if exist "C:\Users\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe" (
    robocopy "C:\Users\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe" "D:\0BackupC\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Users\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe not found." >> "0BackupC.txt"
)

:: Copy signatures
if exist "C:\Users\%userName%\AppData\Roaming\Microsoft\signatures" (
    robocopy "C:\Users\%userName%\AppData\Roaming\Microsoft\signatures" "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\signatures" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\signatures copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\signatures copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Users\%userName%\AppData\Roaming\Microsoft\signatures not found." >> "0BackupC.txt"
)

:: Copy Excel
if exist "C:\Users\%userName%\AppData\Roaming\Microsoft\Excel" (
    robocopy "C:\Users\%userName%\AppData\Roaming\Microsoft\Excel" "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\Excel" /E /COPY:DAT /R:0 /W:0 /NP
    if %ERRORLEVEL% EQU 0 (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\Excel copy is done." >> "0BackupC.txt"
    ) else (
        echo [%date% %time%] "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\Excel copy has completed with errors." >> "0BackupC.txt"
    )
) else (
    echo [%date% %time%] "C:\Users\%userName%\AppData\Roaming\Microsoft\Excel not found." >> "0BackupC.txt"
)

