# Dotfiles

This repository contains my personal dotfiles for various applications and tools.

## What's Included

- **shell/** - Shell configuration files
  - `.bashrc` - Bash configuration
  - `.zshrc` - Zsh configuration
  - `.profile` - Login shell configuration
  - `.bash_logout` - Bash logout configuration
  - `.shell.pre-oh-my-zsh` - Pre Oh My Zsh shell configuration

- **git/** - Git configuration files
  - `.gitconfig` - Git configuration
  - `.gitignore_global` - Global Git ignore patterns

- **vim/** - Vim configuration files
  - `.vimrc` - Vim configuration
  - `.viminfo` - Vim information file

- **misc/** - Miscellaneous configuration files
  - `.inputrc` - GNU Readline configuration

## Installation

To install these dotfiles, simply clone this repository and run the install script:

```bash
git clone <repository-url> ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
1. Create symbolic links from your home directory to the dotfiles in this repository
2. Back up any existing dotfiles before creating the symbolic links
3. Skip any files that don't exist in the repository

The script can be run multiple times safely; it will only create backups of files that haven't been linked yet.

## Maintenance

### Updating Dotfiles

To update your dotfiles after making changes directly in your home directory:

1. Make changes to your dotfiles in your home directory
2. Copy the changed files to the appropriate directory in the repository
3. Commit and push your changes

For example:

```bash
# After editing ~/.zshrc
cp ~/.zshrc ~/dotfiles/shell/
cd ~/dotfiles
git add shell/.zshrc
git commit -m "Update zsh configuration"
git push
```

### Adding New Dotfiles

To add new dotfiles to the repository:

1. Copy the file to the appropriate directory
2. Add the linking code to `install.sh`
3. Commit and push your changes

## Notes

- Sensitive information and machine-specific configurations should be kept in separate files that are sourced by these dotfiles but not tracked in this repository.
- Consider using a `.local` suffix for machine-specific configurations. For example, create a `.bashrc.local` file for machine-specific Bash configurations.
