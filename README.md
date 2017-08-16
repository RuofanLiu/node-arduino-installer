# node-arduino-installer
Install scripts for node-arduino. Intended for use by users unfamiliar with the command line. 

### Ubuntu
```install.sh``` uses the Ubuntu package manager to install Node.js and ```npm```, the Node package manager, which is used to install ```node-arduino```. 
The user is added to the ```dialout``` usergroup, which has access to serial read/write.

### Windows
```install.bat``` uses a pre-packaged .msi installer to install Node.js and ```npm```, which is used to install ```node-arduino```.
run.bat launches ```node-arduino``` and opens a visualizer in the default browser.

