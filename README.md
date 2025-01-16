# CommitConfetti 🎉

Celebrate your Git commits with a burst of confetti in Raycast! CommitConfetti adds a fun, visual celebration to your development workflow by triggering Raycast's confetti animation every time you make a commit.



https://github.com/user-attachments/assets/0db69762-f281-452e-bead-3537fe22e7f6



## Requirements

- macOS
- [Raycast](https://www.raycast.com) installed on your system
- Git

## Installation

1. Clone this repository or download the `setup_commit_confetti.sh` script
2. Make the script executable:
   ```bash
   chmod +x setup_commit_confetti.sh
   ```
3. Run the setup script:
   ```bash
   ./setup_commit_confetti.sh
   ```

The script will:
- Create a global Git hooks directory at `~/.git-hooks`
- Set up a post-commit hook that triggers Raycast's confetti animation
- Configure Git to use the global hooks directory

## How It Works

CommitConfetti uses Git's post-commit hook mechanism to trigger Raycast's confetti animation after each successful commit. The hook is installed globally, so it works across all your Git repositories.

## Uninstallation

To remove CommitConfetti, simply reset your global Git hooks path:
```bash
git config --global --unset core.hooksPath
```

## License

[MIT License](LICENSE)
