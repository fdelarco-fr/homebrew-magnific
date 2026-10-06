# Homebrew tap for Magnific Desktop

Unofficial [Homebrew](https://brew.sh) tap for [Magnific Desktop](https://www.magnific.com/desktop) on macOS (Apple Silicon and Intel, macOS 12+).

## Install

```bash
brew install --cask fdelarco-fr/magnific/magnific
```

Or tap first:

```bash
brew tap fdelarco-fr/magnific
brew install --cask magnific
```

## Update

The app updates itself (`auto_updates true`). To force it through Homebrew:

```bash
brew upgrade --cask --greedy magnific
```

## Uninstall

```bash
brew uninstall --cask magnific          # app only
brew uninstall --cask --zap magnific    # app + settings, caches and data
```

## How the cask stays current

The `Bump cask` workflow runs every 6 hours. It reads `https://cdn.magnific.com/ait/magnific-desktop/latest.json`, and when a new version is out it downloads both DMGs, updates `version` and `sha256` in `Casks/magnific.rb`, and commits the change. It can also be run by hand from the Actions tab.

To check locally:

```bash
brew livecheck --cask fdelarco-fr/magnific/magnific
brew audit --cask --online fdelarco-fr/magnific/magnific
```
