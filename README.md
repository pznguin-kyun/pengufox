# ***penguinFox***
***Firefox with better UI, better privacy and security.***

***penguinFox is Firefox config that makes Firefox more beautiful, more secure and better protect privacy by using FirefoxCSS and modded arkenfox users.js.***

![img](https://i.imgur.com/cxtvfLg.png)

# ***Features***
- Beautify Firefox with FirefoxCSS
- Protect privacy and security with Arkenfox user.js
- Automatically install extensions (uBlock Origin, Firefox Multi-Account Containers)
- Turn off all telemetry, studies
- Add calculator to address bar
- Make Firefox suckless

# ***Installation***

## 1. Install automatically (Linux only)
- Clone this repository
```
git clone https://github.com/p3nguin-kun/penguinFox
```

- Run the installer script
```
sh penguinfox-installer.sh
```

- Restart Firefox and enjoy

## 2. Install manually
- Clone this repository or download the [zip file](https://github.com/p3nguin-kun/penguinFox/archive/refs/heads/main.zip)
```
git clone https://github.com/p3nguin-kun/penguinFox
```

- Extract file (if you download the zip file)

- Copy all files and folders in penguinFox and paste to your profile folder
  - ```~/.mozilla/firefox/######.default-release``` (Linux and macOS)
  - ```C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release``` (Windows)
  
  > If you use Windows, you need to delete userChrome.css and rename userChrome-windows.css to userChrome.css

- Restart Firefox and enjoy

# ***How to uninstall***
- Just go to your profile folder and delete ```user.js```, ```prefs.js``` and ```chrome``` folder

# ***Q&A***

Q: Why my Firefox doesn't save history and how to fix it?

A: Because I use arkenfox user.js for my config and it doesn't save history but you can fix it by edit user.js file
  - Go to your profile folder
  - Open ```user.js``` with any text editor
  - Find this line: ```user_pref("privacy.clearOnShutdown.history", true);```
  - Change ```true``` to ```false```
  - You can do it with Cache, Downloads or Form data

Q: How to uninstall penguinFox without losing data?

A: See [How to uninstall](#how-to-uninstall)
