#!/bin/bash

# Git setup

# Git comes with a tool called git config that lets you get and set configuration
# variables that control all aspects of how Git looks and operates. These variables
# can be stored in three different places:
# - [path]/etc/gitconfig file: Contains values applied to every user on the system
#   and all their repositories. If you pass the option --system to git config, it
#   reads and writes from this file specifically. Because this is a system
#   configuration file, you would need administrative or superuser privilege to
#   make changes to it.
# - ~/.gitconfig or ~/.config/git/config file: Values specific personally to you,
#   the user. You can make Git read and write to this file specifically by passing
#   the --global option, and this affects all of the repositories you work with on
#   your system.
# - config file in the Git directory (that is, .git/config) of whatever repository
#   you’re currently using: Specific to that single repository. You can force Git
#   to read from and write to this file with the --local option, but that is in
#   fact the default. Unsurprisingly, you need to be located somewhere in a Git
#   repository for this option to work properly.

# You can view all of your settings and where they are coming from using:

git config --list --show-origin

# Setting up your identity

# Set your user name and email address. This is important because every Git commit
# uses this information, and it’s immutably baked into the commits you start
# creating. 

# Yu need to do this only once if you pass the --global option, because then Git
# will always use that information for anything you do on that system. If you want
# to override this with a different name or email address for specific projects,
# you can run the command without the --global option when you’re in that project.

git config --global user.name "Jean Jacques Uzabumuhire"
git config --global user.email "uzabumuhire@gmail.com"

# Setting up your editor

# Configure the default text editor that will be used when Git needs you to type
# in a message. If not configured, Git uses your system’s default editor. More 
# information, can be found at https://git-scm.com/book/en/v2/ch00/ch_core_editor.

git config --global core.editor "code --wait"
