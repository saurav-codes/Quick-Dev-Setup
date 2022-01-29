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
FireFox
VS Code
Sublime
```
# generate SSH Keys 🔐
```
ssh-keygen -t ed25519 -C "your_email@example.com"
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
