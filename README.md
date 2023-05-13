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

### put this here - `home/saurav/.config/nvim/init.vim`

```bash
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
:set smartindent
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
filetype plugin on
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar

Plug 'ncm2/ncm2'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
set encoding=UTF-8
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews
:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

```

## VS Code

```json
{
    "editor.fontFamily": "JetBrains Mono",
    "terminal.integrated.fontFamily": "JetBrains Mono NL",
    "editor.fontSize": 18,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.mouseWheelZoom": true,
    "editor.cursorBlinking": "expand",
    "editor.cursorStyle": "block",
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "prettier.printWidth": 120,
    "editor.formatOnSave": false,
    "prettier.tabWidth": 4,
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
    "[python]": {
        "editor.defaultFormatter": "ms-python.python"
    },
    "python.formatting.provider": "black",
    "python.formatting.blackArgs": [
        "--line-length",
        "120"
    ],
    "[html]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "git.autofetch": true,
    "files.associations": {
        "*.html": "html"
    },
    "[markdown]": {
        "editor.defaultFormatter": "DavidAnson.vscode-markdownlint"
    },
    "window.zoomLevel": 4,
    "workbench.iconTheme": "material-icon-theme"
}

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
