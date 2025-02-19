#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Create symlinks
ln -sf $DOTFILES/.zshrc $HOME/.zshrc
ln -sf $DOTFILES/.aliases $HOME/.aliases
ln -sf $DOTFILES/.functions $HOME/.functions
ln -sf $DOTFILES/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.gitignore_global $HOME/.gitignore_global
ln -sf $DOTFILES/.tmux.conf $HOME/.tmux.conf

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle

# Install Oh My Zsh if not installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Dotfiles installation complete!"
