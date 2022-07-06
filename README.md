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

Import the `src/iterm.json` profile configuration into iTerm app and make it the default profile.

### IntelliJ 

#### CLI

[Setup](https://www.jetbrains.com/help/idea/working-with-the-ide-features-from-command-line.html#9c49c588) the `idea`
script to open projects/files via command line.

1. Create a file under `/usr/local/bin/idea` with the content below
    ```shell
    #!/bin/sh
    
    open -na "IntelliJ IDEA.app" --args "$@"
    ```
2. Give execution permissions to the script `sudo chmod +x /usr/local/bin/idea`

#### Plugins / settings

## Miscellaneous

- Keyboard / Mouse: [Logitech Options+](https://www.logitech.com/pl-pl/software/logi-options-plus.html)
- Webcam: [Logitech Tune](https://www.logitech.com/pl-pl/video-collaboration/software/logi-tune-software.html)
