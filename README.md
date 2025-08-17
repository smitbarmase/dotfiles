# dotfiles

### install

```bash
./install.sh
```

script will:
- backup existing config files
- create symlinks using stow

## fun stuff

- `ai` fish function loads openai, gemini, and anthropic api keys from 1password's cli
- `git` uses 1password's ssh agent to sign and authenticate commits
- `nvim` is setup just for my liking i.e. persistent undo and no backups/swaps

only my name, email and ssh public key are exposed (the only safe things to share at parties)
