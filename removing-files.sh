#!/bin/bash

# Removing files from Git

# To remove a file from Git, you have to remove it from your tracked files 
# (more accurately, remove it from your staging area) and then commit. 
# The git rm command does that, and also removes the file from your working 
# directory so you don’t see it as an untracked file the next time around.

git rm filename.ext

# The next time you commit, the file will be gone and no longer tracked. 
# If you modified the file or had already added it to the staging area, 
# you must force the removal with the -f option. This is a safety feature 
# to prevent accidental removal of data that hasn’t yet been recorded in 
# a snapshot and that can’t be recovered from Git.
git rm -f filename.ext

# If you simply remove the file from your working directory without git rm,
# it shows up under the “Changes not staged for commit” (that is, unstaged) 
# area of your git status output.

rm filename.ext

# Another useful thing you may want to do is to keep the file in your working tree 
# but remove it from your staging area. In other words, you may want to keep the 
# file on your hard drive but not have Git track it anymore. This is particularly 
# useful if you forgot to add something to your .gitignore file and accidentally 
# staged it. To do this, use the --cached option

git rm --cached filename.ext

# You can pass files, directories, and file-glob patterns to the git rm command.
# Note the backslash (\) in front of the *. This is necessary because Git does its 
# own filename expansion in addition to your shell’s filename expansion.

# To remove all files that have the .ext extension in the directoryname/ directory.

git rm directoryname/\*.ext 

# To removes all files whose names end with ext.

git rm \*ext
