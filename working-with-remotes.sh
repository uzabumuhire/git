#!/bin/bash

# Working with remotes

# To be able to collaborate on any Git project, you need to know how to manage your 
# remote repositories. Remote repositories are versions of your project that are 
# hosted on the Internet or network somewhere. You can have several of them, each of 
# which generally is either read-only or read/write for you. Collaborating with 
# others involves managing these remote repositories and pushing and pulling data to 
# and from them when you need to share work. Managing remote repositories includes 
# knowing how to add remote repositories, remove remotes that are no longer valid, 
# manage various remote branches and define them as being tracked or not, and more.

# Showing your remotes

# To see which remote servers you have configured, you can run the git remote command. 
# It lists the shortnames of each remote handle you’ve specified. If you’ve cloned your 
# repository, you should at least see origin — that is the default name Git gives to 
# the server you cloned from.

git remote

# You can also specify -v, which shows you the URLs that Git has stored for the shortname 
# to be used when reading and writing to that remote. If you have more than one remote, 
# the command lists them all. This means we can pull contributions from any of these users 
# pretty easily. We may additionally have permission to push to one or more of these,
# though we can’t tell that here.

git remote -v

# Adding remote repositories

# The git clone command implicitly adds the origin remote for you. Here’s how to add a new 
# remote explicitly. To add a new remote Git repository as a shortname you can reference 
# easily, run git remote add <shortname> <url>

git remote add <shortname> <url>