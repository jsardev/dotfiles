# .dotfiles

This is a repository which helps to setup a fresh development/personal Mac. It consists of automated scripts which
install all the necessary apps for a development environment.

## Prerequisites

In order to run the automated script, we need some development related dependencies on the machine. Install XCode in
order to install everything that's necessary to start the automation script.

`xcode-select --install`

## How to use

- `git clone git@bitbucket.org:sarneeh/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `./install`

## Post-install configuration

Some of the installed apps need to be manually configured as the process can't be automated. Here's a description of the
necessary configurations:

### Docker

To install docker, it's bet to use the Docker Desktop application as installing it via `brew` comes with some issues.

[Download Docker Desktop](https://www.docker.com/products/docker-desktop/).

### Raycast

First, you need to turn off the default Mac Spotlight keyboard shortcut:

1. System preferences > Keyboard > Shortcuts
2. Select Spotlight
3. Deselect all spotlight shortcuts

Now, we can run Raycast and configure it:

1. Run Raycast
2. Setup the default keyboard shortcut
3. Import preferences and data from `src/backup.rayconfig`

### iTerm

1. Import the `src/iterm.json` profile configuration into iTerm app and make it the default profile.

2. Import the `src/iterm.itermkeymap` keymap configuration overwriting the existing ones.

3. Set the global hotkey `option + space`

#### Plugins / settings

## Miscellaneous

- Keyboard / Mouse: [Logitech Options+](https://www.logitech.com/pl-pl/software/logi-options-plus.html)
- Webcam: [Logitech Tune](https://www.logitech.com/pl-pl/video-collaboration/software/logi-tune-software.html)
