# .dotfiles

This is a repository which helps to setup a fresh development/personal Mac. It consists of automated scripts which
install all the necessary apps for a development environment.

## Prerequisites

In order to run the automated script, we need some development related dependencies on the machine. Install XCode in
order to install everything that's necessary to start the automation script.

`xcode-select --install`

## How to use

- `git clone git@github.com:jsardev/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `./install`

## Post-install configuration

Some of the installed apps need to be manually configured as the process can't be automated. Here's a description of the
necessary configurations:

### 1Password

Set global hotkeys for 1Password:

- Show Quick Access: `cmd + option + \`

### Raycast

First, you need to turn off the default Mac Spotlight keyboard shortcut:

1. System preferences > Keyboard > Shortcuts
2. Select Spotlight
3. Deselect all spotlight shortcuts

Now, we can run Raycast and configure it:

1. Run Raycast
2. Setup the default keyboard shortcut
3. Import preferences and data from `src/backup.rayconfig`

#### Plugins / settings

## Miscellaneous

- Keyboard / Mouse: [Logitech Options+](https://www.logitech.com/pl-pl/software/logi-options-plus.html)
- Webcam: [Logitech Tune](https://www.logitech.com/pl-pl/video-collaboration/software/logi-tune-software.html)
