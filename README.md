# 📒sublime-settings
a simple config for sublime text 4

```

{
	"color_scheme": "Monokai.sublime-color-scheme",
	"theme": "Default.sublime-theme",
	"ignored_packages":
	[
		"Vintage",
	],
	"font_face": "Fira Code Medium",
	"font_options":
	[
	    "gray_antialias",
	    "subpixel_antialias"
	],
	"font_size": 15,
	"line_padding_top": 1,
	"auto_complete": true,
}


```

# add open with sublime
```
@echo off
SET st3Path=C:\Program Files\Sublime Text\sublime_text.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "" /d "Open with Sublime Text 4"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 4\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%1\"" /f
 
rem add it for right click on explorer
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "" /d "Open with Sublime Text 4"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text 4\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%V\"" /f 

rem add it for right click on explorer
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "" /d "Open with Sublime Text 4"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text 4"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text 4\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%V\"" /f
pause
```

# Install Zsh Guide
```
https://www.tecmint.com/install-zsh-in-ubuntu/
```
# Oh-my-zsh theme 🎴
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# HomeBrew 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
# CopyQ
```
https://linuxhint.com/install-copyq-ubuntu/
```
# Albert 🔍
```
https://albertlauncher.github.io/installing/
```
# OBS
```
sudo apt install obs-studio
```
# VLC 📽
```
sudo apt install vlc
```
# Other Required Softwares
```
Chrome
Choco + Node
7-Zip
Brave
Notion
Postman
power toys
telegram
Trello
FireFox
VS Code
Sublime
```
# generate SSH Keys 🔐
```
ssh-keygen -t ed25519 -C "saurav@example.com"
```
## add agent 🕵️
```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
# 🎮 Steam
```
sudo apt install steam-installer
```
# JAVA ☕
```
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04
```
# Node
```
sudo apt install nodejs
```
# Brightness config
## Step up:
```
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
```

## Step down:
```
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepDown
```
# zshrc file
```
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git redis-cli python celery zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(oh-my-posh --init --shell zsh --config /home/saurav/posh_config.json)"

```
# oh-my-posh posh_config.json

```

{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "blocks": [
    {
      "alignment": "left",
      "segments": [
        {
          "background": "#c386f1",
          "foreground": "#ffffff",
          "leading_diamond": "\ue0b6",
          "properties": {
            "template": " {{ .UserName }} "
          },
          "style": "diamond",
          "trailing_diamond": "\ue0b0",
          "type": "session"
        },
        {
          "background": "#ff479c",
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "folder_separator_icon": " \ue0b1 ",
            "home_icon": "~",
            "style": "folder",
            "template": " \uf74a  {{ .Path }} "
          },
          "style": "powerline",
          "type": "path"
        },
        {
          "background": "#fffb38",
          "background_templates": [
            "{{ if or (.Working.Changed) (.Staging.Changed) }}#FF9248{{ end }}",
            "{{ if and (gt .Ahead 0) (gt .Behind 0) }}#ff4500{{ end }}",
            "{{ if gt .Ahead 0 }}#B388FF{{ end }}",
            "{{ if gt .Behind 0 }}#B388FF{{ end }}"
          ],
          "foreground": "#193549",
          "leading_diamond": "\ue0b6",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "branch_max_length": 25,
            "fetch_stash_count": true,
            "fetch_status": true,
            "fetch_upstream_icon": true,
            "template": " {{ .UpstreamIcon }}{{ .HEAD }}{{ .BranchStatus }}{{ if .Working.Changed }} \uf044 {{ .Working.String }}{{ end }}{{ if and (.Working.Changed) (.Staging.Changed) }} |{{ end }}{{ if .Staging.Changed }} \uf046 {{ .Staging.String }}{{ end }}{{ if gt .StashCount 0 }} \uf692 {{ .StashCount }}{{ end }} "
          },
          "style": "powerline",
          "trailing_diamond": "\ue0b4",
          "type": "git"
        },
        {
          "background": "#6CA35E",
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "fetch_version": true,
            "template": " \uf898 {{ if .PackageManagerIcon }}{{ .PackageManagerIcon }} {{ end }}{{ .Full }} "
          },
          "style": "powerline",
          "type": "node"
        },
        {
          "background": "#8ED1F7",
          "foreground": "#111111",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "fetch_version": true,
            "template": " \ue626 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }} "
          },
          "style": "powerline",
          "type": "go"
        },
        {
          "background": "#4063D8",
          "foreground": "#111111",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "fetch_version": true,
            "template": " \ue624 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }} "
          },
          "style": "powerline",
          "type": "julia"
        },
        {
          "background": "#FFDE57",
          "foreground": "#111111",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "display_mode": "files",
            "fetch_virtual_env": false,
            "template": " \ue235 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }} "
          },
          "style": "powerline",
          "type": "python"
        },
        {
          "background": "#AE1401",
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "display_mode": "files",
            "fetch_version": true,
            "template": " \ue791 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }} "
          },
          "style": "powerline",
          "type": "ruby"
        },
        {
          "background": "#FEAC19",
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "display_mode": "files",
            "fetch_version": false,
            "template": " \uf0e7{{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }} "
          },
          "style": "powerline",
          "type": "azfunc"
        },
        {
          "background_templates": [
            "{{if contains \"default\" .Profile}}#FFA400{{end}}",
            "{{if contains \"jan\" .Profile}}#f1184c{{end}}"
          ],
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "display_default": false,
            "template": " \ue7ad {{ .Profile }}{{ if .Region }}@{{ .Region }}{{ end }} "
          },
          "style": "powerline",
          "type": "aws"
        },
        {
          "background": "#ffff66",
          "foreground": "#111111",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "template": " \uf0ad "
          },
          "style": "powerline",
          "type": "root"
        },
        {
          "background": "#83769c",
          "foreground": "#ffffff",
          "properties": {
            "always_enabled": true,
            "template": "<transparent>\ue0b0</> \ufbab{{ .FormattedMs }}\u2800"
          },
          "style": "plain",
          "type": "executiontime"
        },
        {
          "background": "#00897b",
          "background_templates": [
            "{{ if gt .Code 0 }}#e91e63{{ end }}"
          ],
          "foreground": "#ffffff",
          "properties": {
            "always_enabled": true,
            "template": "<parentBackground>\ue0b0</> \ue23a "
          },
          "style": "diamond",
          "trailing_diamond": "\ue0b4",
          "type": "exit"
        }
      ],
      "type": "prompt"
    },
    {
      "segments": [
        {
          "background": "#0077c2",
          "foreground": "#ffffff",
          "properties": {
            "template": "<#0077c2,transparent>\ue0b6</> \uf489 {{ .Name }} <transparent,#0077c2>\ue0b2</>"
          },
          "style": "plain",
          "type": "shell"
        },
        {
          "background": "#1BD760",
          "foreground": "#111111",
          "invert_powerline": true,
          "powerline_symbol": "\ue0b2",
          "properties": {
            "paused_icon": "\uf04c ",
            "playing_icon": "\uf04b ",
            "template": " \uf167 {{ .Icon }}{{ if ne .Status \"stopped\" }}{{ .Artist }} - {{ .Track }}{{ end }} "
          },
          "style": "powerline",
          "type": "ytm"
        },
        {
          "background": "#f36943",
          "background_templates": [
            "{{if eq \"Charging\" .State.String}}#40c4ff{{end}}",
            "{{if eq \"Discharging\" .State.String}}#ff5722{{end}}",
            "{{if eq \"Full\" .State.String}}#4caf50{{end}}"
          ],
          "foreground": "#ffffff",
          "invert_powerline": true,
          "powerline_symbol": "\ue0b2",
          "properties": {
            "charged_icon": "\ue22f ",
            "charging_icon": "\ue234 ",
            "discharging_icon": "\ue231 ",
            "template": " {{ if not .Error }}{{ .Icon }}{{ .Percentage }}{{ end }}{{ .Error }}\uf295 "
          },
          "style": "powerline",
          "type": "battery"
        },
        {
          "background": "#2e9599",
          "foreground": "#111111",
          "invert_powerline": true,
          "leading_diamond": "\ue0b2",
          "properties": {
            "template": " {{ .CurrentDate | date .Format }} "
          },
          "style": "diamond",
          "trailing_diamond": "\ue0b4",
          "type": "time"
        }
      ],
      "type": "rprompt"
    }
  ],
  "console_title": true,
  "console_title_style": "template",
  "console_title_template": "{{ .Shell }} in {{ .Folder }}",
  "final_space": true,
  "version": 1
}


```
## Hyper Terminal

```
https://hyper.is/
```
## Install these required packages
```
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs
npm install --global pure-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
hyper i hyper-mac-controls
```

> press ctrl + , & use below setting file
```
"use strict";
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.
module.exports = {
    config: {
        // choose either `'stable'` for receiving highly polished,
        // or `'canary'` for less polished but more frequent updates
        updateChannel: 'stable',
        // default font size in pixels for all tabs
        fontSize: 12,
        // font family with optional fallbacks
        fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
        // default font weight: 'normal' or 'bold'
        fontWeight: 'normal',
        // font weight for bold characters: 'normal' or 'bold'
        fontWeightBold: 'bold',
        // line height as a relative unit
        lineHeight: 1,
        // letter spacing as a relative unit
        letterSpacing: 0,
        // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
        cursorColor: 'rgba(248,28,229,0.8)',
        // terminal text color under BLOCK cursor
        cursorAccentColor: '#000',
        // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
        cursorShape: 'BLOCK',
        // set to `true` (without backticks and without quotes) for blinking cursor
        cursorBlink: false,
        // color of the text
        foregroundColor: '#fff',
        // terminal background color
        // opacity is only supported on macOS
        backgroundColor: '#000',
        // terminal selection color
        selectionColor: 'rgba(248,28,229,0.3)',
        // border color (window, tabs)
        borderColor: '#333',
        // custom CSS to embed in the main window
        css: '',
        // custom CSS to embed in the terminal window
        termCSS: '',
        // set custom startup directory (must be an absolute path)
        workingDirectory: '',
        // if you're using a Linux setup which show native menus, set to false
        // default: `true` on Linux, `true` on Windows, ignored on macOS
        showHamburgerMenu: '',
        // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
        // additionally, set to `'left'` if you want them on the left, like in Ubuntu
        // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
        showWindowControls: '',
        // custom padding (CSS format, i.e.: `top right bottom left`)
        padding: '12px 14px',
        // the full list. if you're going to provide the full color palette,
        // including the 6 x 6 color cubes and the grayscale map, just provide
        // an array here instead of a color map object
        colors: {
            black: '#000000',
            red: '#C51E14',
            green: '#1DC121',
            yellow: '#C7C329',
            blue: '#0A2FC4',
            magenta: '#C839C5',
            cyan: '#20C5C6',
            white: '#C7C7C7',
            lightBlack: '#686868',
            lightRed: '#FD6F6B',
            lightGreen: '#67F86F',
            lightYellow: '#FFFA72',
            lightBlue: '#6A76FB',
            lightMagenta: '#FD7CFC',
            lightCyan: '#68FDFE',
            lightWhite: '#FFFFFF',
            limeGreen: '#32CD32',
            lightCoral: '#F08080',
        },
        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        //
        // Windows
        // - Make sure to use a full path if the binary name doesn't work
        // - Remove `--login` in shellArgs
        //
        // Windows Subsystem for Linux (WSL) - previously Bash on Windows
        // - Example: `C:\\Windows\\System32\\wsl.exe`
        //
        // Git-bash on Windows
        // - Example: `C:\\Program Files\\Git\\bin\\bash.exe`
        //
        // PowerShell on Windows
        // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
        //
        // Cygwin
        // - Example: `C:\\cygwin64\\bin\\bash.exe`
        shell: '',
        // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
        // by default `['--login']` will be used
        shellArgs: ['--login'],
        // for environment variables
        env: {},
        // Supported Options:
        //  1. 'SOUND' -> Enables the bell as a sound
        //  2. false: turns off the bell
        bell: 'SOUND',
        // An absolute file path to a sound file on the machine.
        // bellSoundURL: '/path/to/sound/file',
        // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
        copyOnSelect: false,
        // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
        defaultSSHApp: true,
        // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
        // selection is present (`true` by default on Windows and disables the context menu feature)
        quickEdit: false,
        // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
        // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
        // (inside tmux or vim with mouse mode enabled for example).
        macOptionSelectionMode: 'vertical',
        // Whether to use the WebGL renderer. Set it to false to use canvas-based
        // rendering (slower, but supports transparent backgrounds)
        webGLRenderer: true,
        // keypress required for weblink activation: [ctrl|alt|meta|shift]
        // todo: does not pick up config changes automatically, need to restart terminal :/
        webLinksActivationKey: '',
        // if `false` (without backticks and without quotes), Hyper will use ligatures provided by some fonts
        disableLigatures: true,
        // set to true to disable auto updates
        disableAutoUpdates: false,
        // set to true to enable screen reading apps (like NVDA) to read the contents of the terminal
        screenReaderMode: false,
        // set to true to preserve working directory when creating splits or tabs
        preserveCWD: true,
        // for advanced config flags please refer to https://hyper.is/#cfg
        showWindowControls: 'left',
    },
    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`
    plugins: ["hyper-rose-pine", "hyper-aurora", 'hyper-snazzy', "hyper-mac-controls", 'hyper-mac-controls'],
    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],
    keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
    },
};
//# sourceMappingURL=config-default.js.map

```

## WSL Ubuntu Network Error solution
```
https://askubuntu.com/questions/1248825/how-can-i-fix-internet-connection-issues-on-wsl2#:~:text=Follow%20the%20steps%3A%201%20Right%20click%20on%20your,checkbox%20specifying%20IPv6%20connection%2C%20uncheck%20it.%20img.%20
```








