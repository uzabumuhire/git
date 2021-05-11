#!/bin/bash

# Tracking new files.

# The git add command takes a path name for either a file or a directory; 
# if it’s a directory, the command adds all the files in that directory 
# recursively.

# You can tell that it’s staged because it’s under the “Changes to be committed” 
# heading. If you commit at this point, the version of the file at the time you 
# ran git add is what will be in the subsequent historical snapshot.
git add filename

# Staging modified files

# A section named “Changes not staged for commit” — which means that a file that 
# is tracked has been modified in the working directory but not yet staged. To 
# stage it, you run the git add command. git add is a multipurpose command — 
# you use it to begin tracking new files, to stage files, and to do other things 
# like marking merge-conflicted files as resolved. It may be helpful to think 
# of it more as “add precisely this content to the next commit” rather than 
# “add this file to the project”.  Git stages a file exactly as it is when you 
# run the git add command.

# Git also has a short status flag so you can see your changes in a more compact
# way. If you run git status -s or git status --short you get a far more simplified 
# output from the command. New files that aren’t tracked have a ?? next to them, 
# new files that have been added to the staging area have an A, modified files have 
# an M and so on. There are two columns to the output — the left-hand column indicates 
# the status of the staging area and the right-hand column indicates the status of 
# the working tree.
git status --short
git status -s

# Viewing your staged and unstaged changes

# To know exactly what you changed, not just which files were changed — you can use 
# the git diff command.

# To see what you’ve changed but not yet staged, type git diff with no other 
# arguments. That command compares what is in your working directory with what is 
# in your staging area. The result tells you the changes you’ve made that you 
# haven’t yet staged.
git diff

# If you want to see what you’ve staged that will go into your next commit, 
# you can use git diff --staged. This command compares your staged changes to
# your last commit (--staged and --cached are synonyms).
git diff --staged