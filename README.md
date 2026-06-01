# homebrew-tap

Homebrew tap for [Nudgebar](https://github.com/mikec-git/nudgebar) - high-visibility
menu-bar calendar reminders for macOS.

## Install

```sh
brew install --cask mikec-git/tap/nudgebar
```

The app is ad-hoc signed (not yet notarized), so on first launch macOS Gatekeeper will
warn. Right-click **Nudgebar.app** and choose **Open**, or run:

```sh
xattr -dr com.apple.quarantine "$(brew --caskroom)/nudgebar/"*/Nudgebar.app
```

## Update / uninstall

```sh
brew upgrade --cask nudgebar
brew uninstall --cask nudgebar     # add --zap to also remove app data
```
