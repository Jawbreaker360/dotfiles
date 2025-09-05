<h1 align="center">Contributing to Dotfiles</h1>

Thank you for your interest in contributing to this dotfiles repository! This guide will help you get started, whether you're new to open source or an experienced contributor.

## How to Contribute

### 1. Reporting Issues

Found a bug or have a suggestion? We'd love to hear from you!

**Before creating an issue:**
- Search existing issues to avoid duplicates
- Check if your issue is already being discussed
- Make sure you're using the latest version

**When reporting bugs:**
- Use the bug report template
- Include your operating system and shell information
- Provide clear steps to reproduce the issue
- Include any error messages you see

### 2. Suggesting Features

Have an idea for improvement? Great! We welcome feature suggestions.

**When suggesting features:**
- Use the feature request template
- Explain the problem it would solve
- Describe how it would be used
- Consider if it would benefit other users

### 3. Making Code Changes

Ready to contribute code? Here's how to get started:

#### Getting Started
1. **Fork the repository** by clicking the "Fork" button
2. **Clone your fork** to your local machine:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git
   cd dotfiles
   ```
3. **Create a new branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### Making Changes
1. **Make your changes** to the appropriate files
2. **Test your changes** by running the installation script:
   ```bash
   ./install.sh
   ```
3. **Test on different systems** if possible (Linux, macOS, WSL)

#### Submitting Changes
1. **Commit your changes** with a clear message:
   ```bash
   git add .
   git commit -m "Add new alias for project navigation"
   ```
2. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```
3. **Create a pull request** using the template

## Types of Contributions

### Configuration Improvements
- **Shell configurations**: Better aliases, functions, or environment setup
- **Git configurations**: Useful aliases or settings
- **Vim configurations**: Key mappings, plugins, or themes
- **Tool configurations**: Settings for other development tools

### Documentation
- **README improvements**: Better explanations or examples
- **Troubleshooting**: Solutions for common problems
- **Tutorials**: Step-by-step guides for beginners

### Installation Script
- **Error handling**: Better error messages and recovery
- **Cross-platform support**: Compatibility with different systems
- **New features**: Additional installation options

## Guidelines

### Code Style
- **Keep it simple**: Focus on clarity and maintainability
- **Add comments**: Explain complex configurations
- **Follow conventions**: Use consistent naming and formatting
- **Test thoroughly**: Make sure changes work as expected

### Commit Messages
Use clear, descriptive commit messages:
- `feat: add new git alias for quick status`
- `fix: resolve permission issue in install script`
- `docs: update README with troubleshooting section`
- `refactor: simplify shell configuration structure`

### Pull Request Guidelines
- **Use the PR template** to provide necessary information
- **Keep PRs focused** - one feature or fix per PR
- **Test your changes** before submitting
- **Update documentation** if needed
- **Be responsive** to feedback and questions

## Getting Help

### Questions?
- **Check existing issues** first
- **Ask in discussions** for general questions
- **Create an issue** for specific problems

### Need Help Getting Started?
- **Read the README** for basic setup instructions
- **Check the troubleshooting section** for common issues
- **Look at existing configurations** to understand the structure

## Recognition

Contributors will be recognized in:
- **README acknowledgments**
- **Release notes** for significant contributions
- **GitHub contributors list**

## Code of Conduct

### Our Pledge
We are committed to providing a welcoming and inclusive experience for everyone, regardless of:
- Experience level
- Background
- Operating system
- Preferred tools

### Expected Behavior
- **Be respectful** and constructive
- **Help others learn** and improve
- **Focus on the issue**, not the person
- **Be patient** with beginners

### Unacceptable Behavior
- Harassment or discrimination
- Personal attacks or trolling
- Spam or off-topic discussions
- Sharing private information

## License

By contributing, you agree that your contributions will be licensed under the same MIT License that covers the project.

---

**Thank you for contributing!** Every contribution, no matter how small, helps make this project better for everyone.
