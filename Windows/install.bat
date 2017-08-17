cd install_files\

msiexec /i "node-v6.11.0-x64.msi"

call npm install npm@latest -g
call npm install node-arduino -g

move %~dps0install_files\run.bat %~dps0

move %~dps0install.bat %~dps0install_files\

firefox -CreateProfile NodeUser -no-remote
cd /D "%APPDATA%\Mozilla\Firefox\Profiles\*.NodeUser"
echo user_pref("network.websocket.allowInsecureFromHTTPS", true);>>prefs.js
