#!/bin/bash

# Committing your changes

# Remember that anything that is still unstaged — any files you have created or modified
# that you haven’t run git add on since you edited them — won’t go into this commit. 
# They will stay as modified files on your disk.

# The commit records the snapshot you set up in your staging area. Anything you didn’t 
# stage is still sitting there modified; you can do another commit to add it to your 
# history. Every time you perform a commit, you’re recording a snapshot of your project 
# that you can revert to or compare to later.

# To commit your staged changes use git commit command. You can type your commit message 
# inline with the commit command by specifying it after a -m flag.
git commit -m "Your message ..."

# Skipping the Staging Area

# If you want to skip the staging area, Git provides a simple shortcut. Adding the 
# -a option to the git commit command makes Git automatically stage every file that is 
# already tracked before doing the commit, letting you skip the git add part.

# Notice how you don’t have to run git add on the new or modified files in this case 
# before you commit. That’s because the -a flag includes all changed files. This is 
# convenient, but be careful; sometimes this flag will cause you to include unwanted 
# changes.
git commit -a -m "Your message ..."