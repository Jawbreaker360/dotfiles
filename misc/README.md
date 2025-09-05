<h1 align="center">Miscellaneous Configuration Directory</h1>

This directory contains miscellaneous configuration files that don't fit into the other specific categories but are important for your system's behavior.

## Files

### .inputrc
The GNU Readline configuration file that customizes the behavior of command-line input in programs that use the Readline library (such as Bash, Python REPL, and many other command-line tools).

#### What .inputrc configures:
- **Key bindings**: Custom keyboard shortcuts for command-line editing
- **Completion behavior**: How tab completion works
- **History settings**: How command history is managed
- **Input behavior**: Case sensitivity, bell settings, etc.
- **Vi/Emacs editing modes**: Choose between different editing styles

#### Common settings include:
- `set completion-ignore-case on` - Makes tab completion case-insensitive
- `set show-all-if-ambiguous on` - Shows all completions when ambiguous
- `set bell-style none` - Disables the terminal bell
- `set editing-mode vi` - Enables vi editing mode
- `"\C-p": history-search-backward` - Custom key bindings

## Installation

This file is automatically linked to your home directory when you run the `install.sh` script:
- `.inputrc` → `~/.inputrc`

## Usage

After installation, the settings in `.inputrc` will automatically apply to:
- Bash shell
- Python interactive interpreter
- MySQL client
- PostgreSQL client
- Many other command-line tools that use Readline

## Customization

To customize your input behavior:
1. Edit the `.inputrc` file in this directory
2. Changes take effect immediately in new terminal sessions
3. You can reload settings in the current session with: `bind -f ~/.inputrc`

## Benefits

- Consistent input behavior across all Readline-based applications
- Improved productivity with custom key bindings
- Better tab completion experience
- Version-controlled input preferences
