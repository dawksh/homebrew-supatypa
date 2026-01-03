# Homebrew Tap for Supatypa

Homebrew tap for installing Supatypa, a macOS menu bar app that tracks daily typing statistics.

## Installation

```bash
brew tap dawksh/supatypa
brew install supatypa
```

## Usage

After installation, run:

```bash
supatypa
```

The app will appear in your menu bar. On first launch, you'll need to:

1. Grant Accessibility permissions when prompted
2. If the prompt doesn't appear, go to **System Settings > Privacy & Security > Accessibility** and enable "supatypa"

## Privacy

Supatypa only tracks typing statistics locally. No data is transmitted or stored outside your device. Keyboard events are processed in real-time and only character/word counts are stored.

