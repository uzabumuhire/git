#!/bin/bash

# About Version Control System

# A Version Control System (VCS) is a system that records changes to a file or set
# of files over time so that you can recall specific versions later. VCS allows
# you to revert selected files back to a previous state, revert the entire project
# back to a previous state, compare changes over time, see who last modified
# something that might be causing a problem, who introduced an issue and when, and
# more. Using a VCS also generally means that if you screw things up or lose files,
# you can easily recover. In addition, you get all this for very little overhead.

# About Git

# Git snapshots

# Git thinks of its data more like a series of snapshots of a miniature filesystem. 
# With Git, every time you commit, or save the state of your project, Git basically
# takes a picture of what all your files look like at that moment and stores a
# reference to that snapshot. To be efficient, if files have not changed, Git
# doesn’t store the file again, just a link to the previous identical file it has
# already stored. Git thinks about its data more like a stream of snapshots.

# This makes Git more like a mini filesystem with some incredibly powerful tools
# built on top of it, rather than simply a VCS.

# Git local operations

# Most operations in Git need only local files and resources to operate — generally
# no information is needed from another computer on your network. Because you have
# the entire history of the project right there on your local disk, most operations
# seem almost instantaneous. This also means that there is very little you can’t do
# if you’re offline or off VPN.

# Git integrity

# Everything in Git is checksummed before it is stored and is then referred to by
# that checksum. This means it’s impossible to change the contents of any file or
# directory without Git knowing about it. This functionality is built into Git at
# the lowest levels and is integral to its philosophy. You can’t lose information
# in transit or get file corruption without Git being able to detect it.

# The mechanism that Git uses for this checksumming is called a SHA-1 hash. This
# is a 40-character string composed of hexadecimal characters (0–9 and a–f) and
# calculated based on the contents of a file or directory structure in Git. Git
# stores everything in its database not by file name but by the hash value of
# its contents.

# Git data recovery

# When you do actions in Git, nearly all of them only add data to the Git database.
# It is hard to get the system to do anything that is not undoable or to make it
# erase data in any way. You can lose or mess up changes you haven’t committed yet,
# but after you commit a snapshot into Git, it is very difficult to lose, especially
# if you regularly push your database to another repository. This makes using Git a
# joy because we know we can experiment without the danger of severely screwing
# things up.

# Git three state

# Git has three main states that your files can reside in: modified, staged, and 
# committed:
# - Modified means that you have changed the file but have not committed it to
#   your database yet.
# - Staged means that you have marked a modified file in its current version to
#   go into your next commit snapshot.
# - Committed means that the data is safely stored in your local database.

# This leads us to the three main sections of a Git project: the working tree, the
# staging area, and the Git directory:
# - The working tree is a single checkout of one version of the project. These
#   files are pulled out of the compressed database in the Git directory and
#   placed on disk for you to use or modify.
# - The staging area is a file, generally contained in your Git directory, that
#   stores information about what will go into your next commit.
# - The Git directory is where Git stores the metadata and object database for
#   your project. This is the most important part of Git, and it is what is
#   copied when you clone a repository from another computer.

# The basic Git workflow goes something like this:
# 1. You modify files in your working tree.
# 2. You selectively stage just those changes you want to be part of your next
#    commit, which adds only those changes to the staging area.
# 3. You do a commit, which takes the files as they are in the staging area and
#    stores that snapshot permanently to your Git directory.

# If a particular version of a file is in the Git directory, it’s considered committed.
# If it has been modified and was added to the staging area, it is staged. And if it
# was changed since it was checked out but has not been staged, it is modified.
