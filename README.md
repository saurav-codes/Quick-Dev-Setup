# Some Useful Commands & Configs

## 📒sublime-settings

a simple config for sublime text 4

```json
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

## Prettier config

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "printWidth": 80,
  "editor.formatOnSave": false,
  "tabWidth": 4,
  "overrides": [
    {
      "files": "*.html",
      "options": {
        "tabWidth": 2
      }
    },
    {
      "files": "*.js",
      "options": {
        "tabWidth": 2
      }
    }
  ],
  "arrowParens": "always",
  "bracketSameLine": true,
  "htmlWhitespaceSensitivity": "ignore",
  "embeddedLanguageFormatting": "off",
  "enableDebugLogs": true,
  "endOfLine": "auto",
  "semi": true,
  "singleAttributePerLine": false,
  "singleQuote": false
}
```

## Install Zsh Guide

```bash
https://www.tecmint.com/install-zsh-in-ubuntu/
```

## Oh-my-zsh theme 🎴

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## HomeBrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## CopyQ

```bash
https://linuxhint.com/install-copyq-ubuntu/
```

## Albert 🔍

```bash
https://albertlauncher.github.io/installing/
```

## OBS

```bash
sudo apt install obs-studio
```

## VLC 📽

```bash
sudo apt install vlc
```

## Other Required Softwares

```bash
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

## generate SSH Keys 🔐

```bash
ssh-keygen -t ed25519 -C "saurav@example.com"
```

## add agent 🕵️

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

## 🎮 Steam

```bash
sudo apt install steam-installer
```

## JAVA ☕

```bash
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04
```

## Node

```bash
sudo apt install nodejs
```

## Brightness config

## Step up

```bash
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
```

## Step down

```bash
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepDown
```

## Hyper Terminal

```bash
https://hyper.is/
```

## Install these required packages

```bash
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs
npm install --global pure-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
hyper i hyper-mac-controls
```

## Make Ubuntu Dock Show only windows Indicators from Current WorkSpace

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
```

## WSL Ubuntu Network Error solution

```bash
https://askubuntu.com/questions/1248825/how-can-i-fix-internet-connection-issues-on-wsl2#:~:text=Follow%20the%20steps%3A%201%20Right%20click%20on%20your,checkbox%20specifying%20IPv6%20connection%2C%20uncheck%20it.%20img.%20
```

```bash
https://support.purevpn.com/how-to-disable-ipv6-linuxubuntu
```

## Neo Vim

```bash
# update vim first
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update -y
sudo apt install --upgrade vim

# now install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update -y
sudo apt install --upgrade neovim
```

## Neo Vim settings
```
# uninstall neovim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## VS Code
```
{
    "terminal.integrated.fontFamily": "JetBrains Mono NL",
    "editor.fontFamily": "Comic Code Ligatures",
    // "editor.fontFamily": "JetBrains Mono",
    "window.commandCenter": true,
    "editor.fontSize": 18,
    "editor.lineHeight": 28,
    "editor.minimap.enabled": true,
    "editor.smoothScrolling": true,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.mouseWheelZoom": true,
    "editor.cursorBlinking": "expand",
    "editor.cursorStyle": "block",
    "prettier.printWidth": 120,
    "editor.formatOnSave": false,
    "prettier.tabWidth": 2,
    "prettier.arrowParens": "always",
    "prettier.bracketSameLine": true,
    "prettier.htmlWhitespaceSensitivity": "ignore",
    "prettier.embeddedLanguageFormatting": "off",
    "prettier.enableDebugLogs": true,
    "prettier.endOfLine": "auto",
    "prettier.semi": true,
    "prettier.singleAttributePerLine": false,
    "prettier.singleQuote": false,
    "window.titleBarStyle": "custom",
    "editor.inlineSuggest.enabled": true,
    "github.copilot.enable": {
        "*": true,
        "yaml": true,
        "plaintext": true,
        "markdown": true
    },
    "python.formatting.provider": "none",
    "[html]": {
        "editor.defaultFormatter": "vscode.html-language-features"
    },
    "git.autofetch": true,
    "files.associations": {
        "*.html": "html"
    },
    "[markdown]": {
        "editor.defaultFormatter": "DavidAnson.vscode-markdownlint"
    },
    "workbench.iconTheme": "material-icon-theme",
    "python.analysis.autoFormatStrings": true,
    "editor.accessibilitySupport": "off",
    "workbench.colorTheme": "Serendipity Midnight",
    "workbench.editor.showTabs": false,
    "workbench.productIconTheme": "icons-carbon",
    "workbench.activityBar.visible": false,
    "ruff.args": [
        "--line-length",
        "120",
    ],
    "python.linting.ignorePatterns": [
        "**/site-packages/**/*.py",
        ".vscode/*.py",
        "*migration*"
    ],
    "[python]": {
        "editor.defaultFormatter": "ms-python.python"
    },
    "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[javascriptreact]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[typescript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[typescriptreact]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[jsonc]": {
        "editor.defaultFormatter": "vscode.json-language-features"
    },
}
```

```

## GitHub - config for multi User 😿

```bash
Host selftaughtdev-me.github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_personal

Host saurav-valardigital.github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_valar
```

## Ubuntu - Gnome - Auto Center New Windows as they appear

```bash
gsettings set org.gnome.mutter center-new-windows true
```

## setup neovim ( Lazy )
```bash
cp nvim ~/.config/
cp *tmux* /home/saurav/ 
```

## Alacritty
```
# Configuration for Alacritty, the GPU enhanced terminal emulator.

# Any items in the `env` entry below will be added as
# environment variables. Some entries may override variables
# set by alacritty itself.
env:
  # TERM variable
  #
  # This value is used to set the `$TERM` environment variable for
  # each instance of Alacritty. If it is not present, alacritty will
  # check the local terminfo database and use `alacritty` if it is
  # available, otherwise `xterm-256color` is used.
  TERM: alacritty
  LANG: "en_US.UTF-8"
  LC_CTYPE: en_US.UTF-8
window:
  # Window background opacity
  #
  # Specified in floating number from `0.0` to `1.0`.
  # The value `0.0` is completely transparent and `1.0` is opaque.
  opacity: 1
  # Window dimensions (changes require restart)
  #
  # Specified in number of columns/lines, not pixels.
  # If both are `0`, this setting is ignored.
  #dimensions:
  #  columns: 0
  #  lines: 0
  # Window position (changes require restart)
  #
  # Specified in number of pixels.
  # If the position is not set, the window manager will handle the placement.
  #position:
  #  x: 0
  #  y: 0
  # Window padding (changes require restart)
  #
  # Blank space added around the window in pixels. This padding is scaled
  # by DPI and the specified value is always added at both opposing sides.
  padding:
   x: 5
   y: 0
  # Spread additional padding evenly around the terminal content.
  #dynamic_padding: false
  # Window decorations
  #
  # Values for `decorations`:
  #     - full: Borders and title bar
  #     - none: Neither borders nor title bar
  #
  # Values for `decorations` (macOS only):
  #     - transparent: Title bar, transparent background and title bar buttons
  #     - buttonless: Title bar, transparent background, but no title bar buttons
  decorations: none
  # Startup Mode (changes require restart)
  #
  # Values for `startup_mode`:
  #   - Windowed
  #   - Maximized
  #   - Fullscreen
  #
  # Values for `startup_mode` (macOS only):
  #   - SimpleFullscreen
  startup_mode: Maximized
  # Window title
  #title: Alacritty
  # Window class (Linux/BSD only):
  #class:
  # Application instance name
  #instance: Alacritty
  # General application class
  #general: Alacritty
  # GTK theme variant (Linux/BSD only)
  #
  # Override the variant of the GTK theme. Commonly supported values are `dark` and `light`.
  # Set this to `None` to use the default theme variant.
  #gtk_theme_variant: None
  scrolling:
  # Maximum number of lines in the scrollback buffer.
  # Specifying '0' will disable scrolling.
    history: 999999
  # Number of lines the viewport will move for every line scrolled when
  # scrollback is enabled (history > 0).
  #multiplier: 3

# Font configuration
font:
  # Normal (roman) font face
  normal:
    # Font family
    #
    # Default:
    #   - (macOS) Menlo
    #   - (Linux/BSD) monospace
    #   - (Windows) Consolas
    family: "JetBrainsMono Nerd Font"

    # The `style` can be specified to pick a specific face.
    style: Regular
    # Bold font face
    #bold:
    # Font family
    #
    # If the bold family is not specified, it will fall back to the
    # value specified for the normal font.
    #family: monospace
    # The `style` can be specified to pick a specific face.
    #style: Bold
    # Italic font face
    #italic:
    # Font family
    #
    # If the italic family is not specified, it will fall back to the
    # value specified for the normal font.
    #family: monospace
    # The `style` can be specified to pick a specific face.
    #style: Italic
    # Bold italic font face
    #bold_italic:
    # Font family
    #
    # If the bold italic family is not specified, it will fall back to the
    # value specified for the normal font.
    #family: monospace
    # The `style` can be specified to pick a specific face.
    #style: Bold Italic

  # Point size
  size: 14.0
  # Offset is the extra space around each character. `offset.y` can be thought of
  # as modifying the line spacing, and `offset.x` as modifying the letter spacing.
  #offset:
  #  x: 0
  #  y: 0
  # Glyph offset determines the locations of the glyphs within their cells with
  # the default being at the bottom. Increasing `x` moves the glyph to the right,
  # increasing `y` moves the glyph upwards.
  #glyph_offset:
  #  x: 0
  #  y: 0

# If `true`, bold text is drawn using the bright color variants.
#draw_bold_text_with_bright_colors: false
# Colors (Tomorrow Night Bright)
colors:
  # Default colors
  primary:
    background: '0x1E1D2F'
    foreground: '0xD9E0EE'

  cursor:
    text: '0x1E1D2F'
    cursor: '0xF5E0DC'

  # Normal colors
  normal:
    black: '0x6E6C7E'
    red: '0xF28FAD'
    green: '0xABE9B3'
    yellow: '0xFAE3B0'
    blue: '0x96CDFB'
    magenta: '0xF5C2E7'
    cyan: '0x89DCEB'
    white: '0xD9E0EE'

  # Bright colors
  bright:
    black: '0x988BA2'
    red: '0xF28FAD'
    green: '0xABE9B3'
    yellow: '0xFAE3B0'
    blue: '0x96CDFB'
    magenta: '0xF5C2E7'
    cyan: '0x89DCEB'
    white: '0xD9E0EE'

  indexed_colors:
    - { index: 16, color: '0xF8BD96' }
    - { index: 17, color: '0xF5E0DC' }
theme: Catppuccin
```

## you can also paste the file to `.config/alacritty/` folder
```bash
cp alacritty.yml ~/.config/alacritty/
```
