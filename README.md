# Dotfiles Backup

## Note:

-   Change the environment variable from source script file if i3blocks.conf not work
-   Arch Linux install all the Nerd-Fonts:

        sudo pacman -S $(pacman -Ssq nerd-fonts)

-   Use [nerdfix](https://github.com/loichyan/nerdfix) to check and find obsolete Nerd Fonts Icons:

        nerdfix check <your file>

-   zsh custom plugins:
    -   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    -   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    -   [zsh-completions](https://github.com/zsh-users/zsh-completions)
-   applications:
    -   [i3-gaps-rounded](https://github.com/resloved/i3)
    -   [picom](https://github.com/yshui/picom)
    -   [rofi](https://github.com/davatorium/rofi)
-   i3blocks scripts:
    -   [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib)
    -   [i3-volume](https://github.com/hastinbe/i3-volume)
-   create scripts/ dir inside ~/.config/i3/ for custom scripts
-   resize image for i3lock-color:

        convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) source.jpg target.png
