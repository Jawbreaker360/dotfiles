<h1 align="center">Shell Configuration Directory</h1>

This directory contains configuration files for various shell environments, providing a consistent and customized command-line experience across different shells.

## Files

### .bashrc
The main configuration file for the Bash shell that runs every time you start a new Bash session. This file typically contains:
- **Aliases**: Shortcuts for commonly used commands
- **Environment variables**: Custom PATH settings and other variables
- **Functions**: Custom shell functions for complex operations
- **Prompt customization**: Custom PS1 prompt settings
- **Shell options**: Various Bash-specific settings and behaviors

### .zshrc
The main configuration file for the Zsh shell, similar to `.bashrc` but for Zsh. This file may include:
- **Oh My Zsh configuration**: If using the Oh My Zsh framework
- **Zsh-specific features**: Advanced completion, globbing, and history features
- **Theme and plugin settings**: Customization for Zsh themes and plugins
- **Zsh options**: Zsh-specific shell options and behaviors

### .profile
A system-wide configuration file that runs for login shells. This file typically contains:
- **Environment variables**: Global PATH and other environment settings
- **Login-specific configurations**: Settings that should apply to all shells
- **System-wide aliases**: Aliases that should be available everywhere

### .bash_logout
A configuration file that runs when you log out of a Bash session. This file may contain:
- **Cleanup commands**: Commands to run when exiting the shell
- **History management**: Commands to save or clean up command history
- **Session cleanup**: Any cleanup tasks needed when ending a session

### .shell.pre-oh-my-zsh
A configuration file that runs before Oh My Zsh initialization. This file is useful for:
- **Pre-Oh My Zsh settings**: Configuration that needs to be set before Oh My Zsh loads
- **Environment preparation**: Setting up environment variables needed by Oh My Zsh
- **Plugin prerequisites**: Installing or configuring dependencies for Oh My Zsh plugins

## Installation

These files are automatically linked to your home directory when you run the `install.sh` script:
- `.bashrc` → `~/.bashrc`
- `.zshrc` → `~/.zshrc`
- `.profile` → `~/.profile`
- `.bash_logout` → `~/.bash_logout`
- `.shell.pre-oh-my-zsh` → `~/.shell.pre-oh-my-zsh`

## Usage

After installation:
1. **Restart your terminal** or run `source ~/.bashrc` (or `source ~/.zshrc`) to apply changes
2. **Login shells** will automatically load `.profile`
3. **Oh My Zsh users** will have their pre-configuration loaded from `.shell.pre-oh-my-zsh`

## Customization

To customize your shell environment:
1. Edit the appropriate configuration file in this directory
2. Test changes by sourcing the file: `source ~/.filename`
3. Commit and push changes to keep your dotfiles synchronized

## Best Practices

- **Keep configurations organized**: Use comments to explain complex configurations
- **Test changes**: Always test shell configurations before committing
- **Backup before major changes**: The install script creates backups automatically
- **Use version control**: All changes are tracked in Git for easy rollback

## Benefits

- **Consistent environment**: Same shell configuration across all your machines
- **Version-controlled settings**: All shell customizations are tracked in Git
- **Easy sharing**: Share your shell setup with others
- **Backup and restore**: Easy to restore your shell configuration on new machines
