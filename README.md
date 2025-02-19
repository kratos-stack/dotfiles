# Kratos' Dotfiles

My personal dotfiles for macOS development environment setup. These configurations help me maintain a consistent development environment across different machines.

## What's Inside

- 🐚 Shell configuration (ZSH with Oh My Zsh)
- 📝 Code editor settings (Neovim, VS Code)
- ⌨️ Terminal settings (tmux, aliases, functions)
- 🔧 Git configuration and global ignores
- 🍺 Homebrew packages and applications
- ⚙️ macOS system preferences

### Key Files

- `.zshrc` - ZSH shell configuration
- `.aliases` - Custom command shortcuts
- `.functions` - Helper shell functions
- `.gitconfig` - Git configuration
- `.tmux.conf` - Terminal multiplexer settings
- `Brewfile` - Homebrew dependencies
- `macos.sh` - macOS system preferences
- `install.sh` - Setup script

## Prerequisites

- macOS
- Git
- Basic command line knowledge

## Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Review and modify the configurations:

   - Update `.gitconfig` with your name and email
   - Review the `Brewfile` and remove/add any packages you want
   - Check `macos.sh` for system preferences you want to change

3. Run the installation:

```bash
./install.sh
./macos.sh
```

## Post-Installation

1. Restart your terminal
2. Install additional Oh My Zsh plugins if needed
3. Customize themes and colors to your preference

## Customization

Feel free to modify any of these files to match your preferences:

- Add new aliases in `.aliases`
- Create custom functions in `.functions`
- Modify keybindings in `.tmux.conf`
- Add your preferred apps to `Brewfile`

## Keeping Up to Date

To update your dotfiles on a new machine or after making changes:

```bash
cd ~/.dotfiles
git pull
./install.sh
```

## Inspiration

These dotfiles were inspired by various members of the developer community. Some notable mentions:

- [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Thoughtbot's dotfiles](https://github.com/thoughtbot/dotfiles)

## License

This project is licensed under the MIT License - feel free to use anything you find useful.

## Contributing

While these dotfiles are personal, suggestions are welcome! Feel free to open an issue or submit a pull request if you have ideas for improvements.

## Backup

Before running the installation script, the existing dotfiles will be backed up with a `.backup` extension. However, it's recommended to manually backup important configurations before proceeding.
