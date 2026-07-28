# mtib/tap

Homebrew tap for tools by [mtib](https://github.com/mtib).

## Usage

```sh
brew tap mtib/tap
```

## Formulae

### dhl

Git worktree workspace manager. Create named workspaces that group worktrees
from multiple repositories under `~/.dhl/<name>/`.

```sh
brew install mtib/tap/dhl
```

See [mtib/dhl](https://github.com/mtib/dhl) for full documentation.

## Casks

### prbar

macOS menu bar app for the GitHub pull requests waiting on your review — direct, team, and
draft, with one notification per newly-arrived request.

```sh
brew trust --cask mtib/tap/prbar
brew install --cask mtib/tap/prbar
open -a prbar
```

`brew trust` is required once per machine — Homebrew 6+ silently ignores casks from untrusted
third-party taps, so without it the install looks like the cask doesn't exist. The app is
ad-hoc signed rather than notarized, so the cask clears its own quarantine flag on install.

See [mtib/prbar](https://github.com/mtib/prbar) for full documentation.

---

*Formulae in this tap are updated automatically by CI on every push to the respective project's `main` branch.*
