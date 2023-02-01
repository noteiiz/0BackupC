@echo off
set /p userName=Enter the username:
robocopy "C:\Desktop" "D:\0BackupC\Desktop" /E /COPY:DAT /R:0 /W:0 /NP
robocopy "C:\Users\%userName%\Favorites" "D:\0BackupC\%userName%\Favorites" /E /COPY:DAT /R:0 /W:0 /NP
robocopy "C:\Users\%userName%\AppData\Local\Google" "D:\0BackupC\%userName%\AppData\Local\Google" /E /COPY:DAT /R:0 /W:0 /NP
robocopy "C:\Users\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe" "D:\0BackupC\%userName%\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe" /E /COPY:DAT /R:0 /W:0 /NP
robocopy "C:\Users\%userName%\AppData\Roaming\Microsoft\signatures" "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\signatures" /E /COPY:DAT /R:0 /W:0 /NP
robocopy "C:\Users\%userName%\AppData\Roaming\Microsoft\Excel" "D:\0BackupC\%userName%\AppData\Roaming\Microsoft\Excel" /E /COPY:DAT /R:0 /W:0 /NP
