# .dotfiles

This is a repository which helps to setup a fresh development/personal Mac. It consists of automated scripts which install all the necessary apps for a development environment, descriptions about all the personal apps and overall configurations for the Mac OS.

## Prerequisites

In order to run the automated script, we need some development related dependencies on the machine. Install XCode in order to install everything that's necessary to start the automation script.

`xcode-select --install`

## How to use

- `git clone git@bitbucket.org:sarneeh/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `./install`

## Post-install configuration

Some of the installed apps need to be manually configured as the process can't be automated. Here's a description of the necessary configurations:

### Alfred

First, you need to turn off the default Mac Spotlight keyboard shortcut:

1. System preferences > Keyboard > Shortcuts
2. Select Spotlight
3. Deselect all spotlight shortcuts

Now, we can run configure Alfred for the first run:

1. Run Alfred
2. Enter the license
3. Select `gen/alfred/Alfred.alfredpreferences` as migration preferences
4. Ensure that in the `General` tab the hotkey is set to `CMD + Space`

And after the initial setup we can configure additional workflows with:

`./configure_alfred`

### iTerm

Import the `src/iterm.json` profile configuration into iTerm app and make it the default profile.

## External apps

Below are apps that are also crucial but can't be downloaded and installed via Homebrew - that's why you'll need to install them manually via Mac App Store.

- [Magnet](https://apps.apple.com/us/app/magnet/id441258766)
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
- [Keka](https://apps.apple.com/pl/app/keka/id470158793)

## Miscellaneous

You may also need to install [Logitech Options](https://www.logitech.com/pl-pl/product/options) in order to properly configure the wireless Logitech keyboard.
