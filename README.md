# ***penguinFox***

- 👩‍💻 ***Author***: [p3nguin-kun](https://github.com/p3nguin-kun)
- 🗨️ ***Discord server***: [penguin clan](https://discord.gg/https://discord.gg/yzn442FGuZ)

***Firefox with better UI, better privacy and security.***

***penguinFox is Firefox config that makes Firefox more beautiful, more secure and better protect privacy by using FirefoxCSS and disabling all telemetry.***

![img](https://i.imgur.com/aByMkWB.png)

# ***Menu***
- [Features](#features)
- [Installation](#installation)
- [How to uninstall](#how-to-uninstall)
- [Q&A](#qa)
- [Contributions](#contributions)
- [Support](#support)
- [Credits](#credits)

# ***Features***
- Beautify Firefox with FirefoxCSS
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

- Go to penguinFox directory
```
cd penguinFox
```

- Run the installer script
```
sh penguinfox-installer.sh
```

- Restart Firefox and enjoy

- (Optional) If you want Firefox to be smaller, go to ```Customize toolbar > Density > Compact```

## 2. Install manually
- Clone this repository or download the [zip file](https://github.com/p3nguin-kun/penguinFox/archive/main.zip)
```
git clone https://github.com/p3nguin-kun/penguinFox
```

- Extract file (if you download the zip file)

- Copy all files and folders in penguinFox and paste to your profile folder
  - ```~/.mozilla/firefox/######.default-release``` (Linux)
  - ```/Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release``` (macOS)
  - ```C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release``` (Windows)

> If you use Windows, delete ```userChrome.css``` and rename ```userChrome-windows.css``` into ```userChrome.css```

- Restart Firefox and enjoy

- (Optional) If you want Firefox to be smaller, go to ```Customize toolbar > Density > Compact```

# ***How to uninstall***
- Just go to your profile folder and delete ```user.js``` and ```chrome``` folder

# ***Contributions***

1. Fork this project.
2. Edit files, add extensions, ...
3. Make a pull request.


# ***Credits***
- [r/FirefoxCSS](https://www.reddit.com/r/FirefoxCSS/)
- [uBlock Origin](https://ublockorigin.com/)
