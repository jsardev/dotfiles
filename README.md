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

Run Alfred for the first time, enter the license and import the config from `gen/alfred/Alfred.alfredpreferences`.

After that, run the `configure_alfred` script to install `alfred-vscode` workflow.

### iTerm

Import the `src/iterm.json` profile configuration into iTerm app and make it the default profile.

## External apps

Below are apps that are also crucial but can't be downloaded and installed via Homebrew - that's why you'll need to install them manually via Mac App Store.

- [Magnet](https://apps.apple.com/us/app/magnet/id441258766)
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
- [Keka](https://apps.apple.com/pl/app/keka/id470158793)
