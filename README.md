<h1 align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
  BSPWM dotfiles
</h1>
<div align="center">
  
  [![Window Manager - BSPWM](https://img.shields.io/static/v1?label=Window%20Manager&message=bspwm&style=for-the-badge&color=DDB6F2&logoColor=D9E0EE&labelColor=302D41)](https://github.com/baskerville/bspwm/)
  [![Bar - EWW widgets](https://img.shields.io/static/v1?label=Bar&message=eww&style=for-the-badge&color=FAE3B0&logoColor=D9E0EE&labelColor=302D41)](https://elkowar.github.io/eww/)
  [![Colorscheme - Catppuccin](https://img.shields.io/static/v1?label=Color%20Scheme&message=catppuccin&style=for-the-badge&color=ABE9B3&logoColor=D9E0EE&labelColor=302D41)](https://github.com/catppuccin/catppuccin)
  [![OS - Arch](https://img.shields.io/static/v1?label=OS&message=arch&style=for-the-badge&color=96CDFB&logoColor=D9E0EE&labelColor=302D41)](https://archlinux.org/)
  
  <br>
  <h3>Screenshot</h3>
  <img src="https://media.discordapp.net/attachments/786240300095897610/965184674836131850/unknown.png" style="width: 90%">
</div>

## Dependencies (Some packages are in AUR)
```
yay -S bspwm sxhkd feh rofi eww-git picom-ibhagwan-git blurlocker playerctl alsa-utils neovim alacritty cava
```
## Install
- Backup your existing configurations, then copy `.config` and `.local` to your home directory.
- Set the [wallpaper](https://github.com/catppuccin/wallpapers/raw/main/landscapes/evening-sky.png) with `feh --bg-fill ~/path/to/image`
- If things dont appear as they are supposed to, make sure the scripts in ~/.local/bin and ~/.config/eww/scripts are executable with `chmod +x file`. Also make sure the bspwmrc and sxhkdrc are executable.

## TODO
- [ ] Notification daemon configuration
- [ ] More screenshots in Readme
- [ ] Add wallpaper

<details>
  <summary>Memory Usage</summary>
  
  The high memory usage in the screenshot is because i have discord, firefox and vscode open. On a fresh boot memory usage is around 700MiB

</details>
