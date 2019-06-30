# dotfiles

![dotfiles](https://files.issaias.net/1561910550-dotfiles.png)

## Installation

**Warning**: This installation script is untested and may or may not work. Furthermore, a lot of these scrips are tailored to me, so you probably want to edit them. Proceed with caution.

### Using git and the bootstrap script

You should clone this repo in `~/.dotfiles`, it doesn't work anywhere else.

```
git clone https://github.com/danteissaias/dotfiles
```

Next, you should run the script and everything will be installed.

```
chmod +x bootstrap.sh
./bootstrap.sh
```

## What's in the box?

- Sensible macOS defaults in `macos/settings.sh`
- Neovim settings and options in `nvim/init.vim`
- Fish customization and functions in `fish/*`
- Tmux options and style in `tmux/tmux.conf`
- Some fonts that I like to use
- My own spicetify theme
