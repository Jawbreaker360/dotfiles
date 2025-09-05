#!/bin/bash

# Dotfiles installer script
# This script creates symbolic links from your home directory to the dotfiles in this repository
# It also creates backups of existing dotfiles before creating the symbolic links

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACKUP_DIR="$DOTFILES_DIR/backups/$(date +%Y%m%d_%H%M%S)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create backup directory
mkdir -p "$BACKUP_DIR"

echo -e "${BLUE}Starting dotfiles installation...${NC}"
echo -e "${YELLOW}Backup directory: $BACKUP_DIR${NC}"

# Function to backup and link files
link_file() {
    local src="$1"
    local dst="$2"
    
    # Check if the source file exists
    if [ ! -e "$src" ]; then
        echo -e "${YELLOW}Warning: Source file $src doesn't exist, skipping...${NC}"
        return
    fi
    
    # If the destination file exists and is not a symlink to our source
    if [ -e "$dst" ] && [ ! -L "$dst" -o "$(readlink "$dst")" != "$src" ]; then
        echo -e "${YELLOW}Backing up $dst to $BACKUP_DIR/$(basename "$dst")${NC}"
        mv "$dst" "$BACKUP_DIR/$(basename "$dst")"
    fi
    
    # If the symlink doesn't exist or doesn't point to our file
    if [ ! -e "$dst" ] || [ ! -L "$dst" -o "$(readlink "$dst")" != "$src" ]; then
        echo -e "${GREEN}Linking $src to $dst${NC}"
        ln -sf "$src" "$dst"
    else
        echo -e "${BLUE}Link already exists for $dst${NC}"
    fi
}

# Shell files
echo -e "\n${BLUE}Setting up shell files...${NC}"
link_file "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"
link_file "$DOTFILES_DIR/shell/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/shell/.profile" "$HOME/.profile"
link_file "$DOTFILES_DIR/shell/.bash_logout" "$HOME/.bash_logout"
link_file "$DOTFILES_DIR/shell/.shell.pre-oh-my-zsh" "$HOME/.shell.pre-oh-my-zsh"

# Git files
echo -e "\n${BLUE}Setting up git files...${NC}"
link_file "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/git/.gitignore_global" "$HOME/.gitignore_global"

# Vim files
echo -e "\n${BLUE}Setting up vim files...${NC}"
link_file "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"
link_file "$DOTFILES_DIR/vim/.viminfo" "$HOME/.viminfo"

# Misc files
echo -e "\n${BLUE}Setting up misc files...${NC}"
link_file "$DOTFILES_DIR/misc/.inputrc" "$HOME/.inputrc"

echo -e "\n${GREEN}Installation complete!${NC}"
echo -e "${YELLOW}Backup of your original dotfiles can be found in $BACKUP_DIR${NC}"
echo -e "${BLUE}You may need to restart your shell for some changes to take effect.${NC}"
