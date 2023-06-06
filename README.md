# ***penguinFox***

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fp3nguin-kun%2FpenguinFox&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Views&edge_flat=true)](https://hits.seeyoufarm.com)
![lmao](https://img.shields.io/github/repo-size/p3nguin-kun/penguinFox?color=458588&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/p3nguin-kun/penguinFox?color=ebdbb2&style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/p3nguin-kun/penguinFox?color=cc241d&style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/p3nguin-kun/penguinFox?color=689d6a&style=for-the-badge)

- 👩‍💻 ***Author***: [@p3nguin-kun](https://github.com/p3nguin-kun)
- 🌐 ***Website***: [https://p3nguin-kun.github.io/penguinRice](https://p3nguin-kun.github.io/penguinRice)
- 🐈‍⬛ ***GitHub***: [https://github.com/p3nguin-kun/penguinRice](https://github.com/p3nguin-kun/penguinRice)
- 🗨️ ***Discord server***: [penguin clan](https://discord.gg/https://discord.gg/yzn442FGuZ)

***Firefox with better UI, better privacy and security.***

***penguinFox is Firefox config that makes Firefox more beautiful, more secure and better protect privacy by using FirefoxCSS and modded arkenfox users.js.***

![img](https://i.imgur.com/cxtvfLg.png)

# ***Menu***
- [Features](#features)
- [Installation](#installation)
- [How to uninstall](#how-to-uninstall)
- [Q&A](#qa)
- [Contributions](#contributions)
- [Support](#support)

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

- Go to penguinFox directory
```
cd penguinFox
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

Q: Why Close, Maximize, Minimize buttons so small on my Windows system?

A: Do you remember to replace userChrome.css with userChrome-windows.css?

# ***Contributions***

1. Fork this project.
2. Edit files, add extensions, ...
3. Make a pull request.

# ***Support***

If you like penguinFox and would like to support & appreciate it via donation then I'll gladly accept it.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C6LA1W6)
[![paypal](https://camo.githubusercontent.com/fd64c51a4afd8b4e2b84479f9a2b654084602bd15f25ab31cbd7a679d73d129a/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f50617950616c2d3030343537433f7374796c653d666f722d7468652d6261646765266c6f676f3d70617970616c266c6f676f436f6c6f723d7768697465)](https://paypal.me/p3nguinkun)
