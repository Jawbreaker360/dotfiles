<h1 align="center">Git Configuration Directory</h1>

This directory contains Git configuration files that customize your Git behavior and settings.

## Files

### .gitconfig
The main Git configuration file that contains:
- User information (name, email)
- Git aliases for common commands
- Default branch settings
- Editor preferences
- Merge and diff tools configuration
- Color settings for better output readability

### .gitignore_global
A global Git ignore file that applies to all Git repositories on your system. This file contains patterns for files and directories that should be ignored by Git across all your projects, such as:
- Operating system files
- IDE and editor files
- Build artifacts
- Temporary files
- Log files

## Installation

These files are automatically linked to your home directory when you run the `install.sh` script:
- `.gitconfig` → `~/.gitconfig`
- `.gitignore_global` → `~/.gitignore_global`

## Usage

After installation, Git will automatically use these configuration files. You can:
- Modify the files in this directory to update your Git settings
- Use `git config --list` to see all current Git settings
- Use `git config --global` commands to modify settings programmatically

## Customization

To customize your Git configuration:
1. Edit the files in this directory
2. The changes will be reflected in your Git behavior immediately
3. Commit and push changes to keep your dotfiles synchronized across machines

## Benefits

- Consistent Git configuration across all your machines
- Version-controlled Git settings
- Easy sharing of Git aliases and preferences
- Centralized management of global ignore patterns
