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
brew install --cask mtib/tap/prbar
xattr -dr com.apple.quarantine /Applications/prbar.app
```

The `xattr` step is required because the app is ad-hoc signed rather than notarized. The cask
tracks the latest release, so it never needs a version bump.

See [mtib/prbar](https://github.com/mtib/prbar) for full documentation.

---

*Formulae in this tap are updated automatically by CI on every push to the respective project's `main` branch.*
