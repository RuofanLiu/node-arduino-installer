cd install_files\

msiexec /i "node-v6.11.0-x64.msi"

call npm install npm@latest -g
call npm install node-arduino -g

move %~dps0install_files\run.bat %~dps0

move %~dps0install.bat %~dps0install_files\