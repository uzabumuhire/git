#!/bin/bash

# Undoing changes you have made

# Be careful, because you can’t always undo some of these undos. This is one of 
# the few areas in Git where you may lose some work if you do it wrong.

# One of the common undos takes place when you commit too early and possibly forget 
# to add some files, or you mess up your commit message. If you want to redo that 
# commit, make the additional changes you forgot, stage them, and commit again using 
# the --amend option.

# This command takes your staging area and uses it for the commit. If you’ve made no 
# changes since your last commit (for instance, you run this command immediately 
# after your previous commit), then your snapshot will look exactly the same, 
# and all you’ll change is your commit message.

# The commit-message editor fires up, but it already contains the message of your 
# previous commit. You can edit the message the same as always, but it overwrites 
# your previous commit.

# Only amend commits that are still local and have not been pushed somewhere. 
# Amending previously pushed commits and force pushing the branch will cause 
# problems for your collaborators.
git commit --amend

# Unstaging a staged file

# How to work with your staging area and working directory changes. The nice part 
# is that the command you use to determine the state of those two areas also reminds 
# you how to undo changes to them.

# git reset can be a dangerous command, especially if you provide the --hard flag. 
# However, in the scenario described below, the file in your working directory is 
# not touched, so it’s relatively safe.

git reset HEAD filename.ext

# Unmodifying a modified file

# What if you realize that you don’t want to keep your changes to the modiefied file? 
# How can you easily unmodify it — revert it back to what it looked like when you last 
# committed (or initially cloned, or however you got it into your working directory)?
# To discard changes for a particular file in the working directory.

# It’s important to understand that git checkout -- <file> is a dangerous command. Any 
# local changes you made to that file are gone — Git just replaced that file with the 
# last staged or committed version. Don’t ever use this command unless you absolutely 
# know that you don’t want those unsaved local changes.

# If you would like to keep the changes you’ve made to that file but still need to get 
# it out of the way for now, use stashing and branching. Remember, anything that is 
# committed in Git can almost always be recovered. Even commits that were on branches 
# that were deleted or commits that were overwritten with an --amend commit can be 
# recovered. However, anything you lose that was never committed is likely never to be 
# seen again.

git checkout -- filename.ext 


# Undoing things with git restore

# Git version 2.23.0 introduced a new command: git restore. It’s basically an alternative 
# to git reset. From Git version 2.23.0 onwards, Git will use git restore instead of git 
# reset for many undo operations.

# It’s important to understand that git restore <file> is a dangerous command. Any local 
# changes you made to that file are gone — Git just replaced that file with the last staged 
# or committed version. Don’t ever use this command unless you absolutely know that you 
# don’t want those unsaved local changes.

# Unstaging a staged file with git restore

git restore --staged filename.ext

# Unmodifying a modified file with git restore

git restore filename.ext