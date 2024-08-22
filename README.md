<div align = "center">

<h1><a href="https://github.com/dpi0/ahk_launcher">ahk_launcher</a></h1>

<a href="https://github.com/dpi0/ahk_launcher/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/dpi0/ahk_launcher?style=flat-square&color=98c379&label=Stars"></a>

<a href="https://github.com/dpi0/ahk_launcher/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/dpi0/ahk_launcher?style=flat-square&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/dpi0/ahk_launcher/watchers">
<img alt="Watchers" src="https://img.shields.io/github/watchers/dpi0/ahk_launcher?style=flat-square&color=f5d08b&label=Watchers"> </a>

<a href="https://github.com/dpi0/ahk_launcher/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/dpi0/ahk_launcher?style=flat-square&color=e06c75&label=Last Commit"> </a>

<a href="https://github.com/dpi0/ahk_launcher/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/dpi0/ahk_launcher?style=flat-square&color=eee&label="> </a>

<h3>Easily launch customizable commands 🚀🍰</h3>

</div>

**ahk_launcher** lets you launch commands and search the web directly from a simple launcher.

## ✨ Features

- **Run Commands**: Remap any Windows command to an easy to remember shortcut.
- **Query Search Engines**: Add any number of search engines and launch it using keywords to search directly from any window.

## 💥 Demo

https://github.com/user-attachments/assets/8f6a5016-8f50-452f-8beb-7b41847728b4

## ⚙️ Requirements

- Latest AutoHotKey v1 version **(app currently doesn't support AHK v2)**
- Running Windows 10 or above

## ⚡ Installation

Get the latest [AutoHotKey v1 exe](https://www.autohotkey.com/download/ahk-install.exe) or use [winstall](https://winstall.app/apps/AutoHotkey.AutoHotkey) with [winget](https://github.com/microsoft/winget-cli)

as of Aug 2024, `v1.1.37.02` is the latest AutoHotKey v1 version

```powershell
winget install --id=AutoHotkey.AutoHotkey -v "1.1.37.02" -e
```

Then, download the zip and extract `ahk_launcher-main.zip`.

To run the script on boot, create a shortcut for `app/launcher.ahk` and place it in `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`.

Run `launcher.ahk` and then use the hotkey **`Win + Space`** to use the launcher.

## 💡 Usage

- `launcher.ahk` handles the UI and functionality.
- `user_commands.ahk` is for custom commands and search engines.

`user_commands.ahk` is what users are expected to modify to their own needs. It contains simple switch case statements where users can add any number of commands and search engines.

### 🔍 Adding search engine

Say you want to add Wikipedia search:

```ahk
case "wiki" . A_Space:
  showSearchBox("https://en.wikipedia.org/wiki/", "Wikipedia", "ce6e6e7")
```

> [!NOTE]  
> the color `ce6e6e7` used in showSearchBox function is an optional parameter which defaults to white `cffffff`

Now entering **`wiki`** and then hitting **`Space`** will present you with an edit box where you can enter your search query.

### 🏓 Adding command

Similarly you can map commands to run statements. Like a common annoyance I have is to quickly change system's environment variables:

```ahk
case "env":
    open("sysdm.cpl")
```

Entering **`env`** will immediately launch the "System Properties" window from where you can go to Advanced > Environment Variables.

## ☑️ Future Improvements

- [ ] Add search engine suggestions
- [ ] Add SVG brand logos next to the title
