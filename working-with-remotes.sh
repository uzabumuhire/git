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

# The git clone command implicitly adds the origin remote for you. To add a new remote Git 
# repository as a shortname you can reference easily, run git remote add <shortname> <url>.

git remote add <shortname> <url>

# Fetching and pulling from your remotes

# To get data from your remote projects, you can run 

git fetch <remote>

# The command goes out to that remote project and pulls down all the data from that remote
# project that you don’t have yet. After you do this, you should have references to all the
# branches from that remote, which you can merge in or inspect at any time.

# If you clone a repository, the command automatically adds that remote repository under 
# the name “origin”. So, git fetch origin fetches any new work that has been pushed to that
# server since you cloned (or last fetched from) it. It’s important to note that the 
# git fetch command only downloads the data to your local repository — it doesn’t 
# automatically merge it with any of your work or modify what you’re currently working on. 
# You have to merge it manually into your work when you’re ready.

# If your current branch is set up to track a remote branch, you can use the git pull command
# to automatically fetch and then merge that remote branch into your current branch. This may
# be an easier or more comfortable workflow for you; and by default, the git clone command 
# automatically sets up your local master branch to track the remote master branch (or 
# whatever the default branch is called) on the server you cloned from. Running git pull 
# generally fetches data from the server you originally cloned from and automatically tries
# to merge it into the code you’re currently working on.

# From git version 2.27 onward, git pull will give a warning if the pull.rebase variable is 
# not set. Git will keep warning you until you set the variable. 

# If you want the default behavior of git (fast-forward if possible, else create a merge
# commit): 

git config --global pull.rebase "false"

# If you want to rebase when pulling: 

git config --global pull.rebase "true"

# Pushing to your remotes

# When you have your project at a point that you want to share, you have to push it 
# upstream. The command for this is simple: git push <remote> <branch>. If you want 
# to push your master branch to your origin server (again, cloning generally sets up 
# both of those names for you automatically), then you can run this to push any 
# commits you’ve done back up to the server.

git push origin master

# This command works only if you cloned from a server to which you have write access 
# and if nobody has pushed in the meantime. If you and someone else clone at the same 
# time and they push upstream and then you push upstream, your push will rightly be 
# rejected. You’ll have to fetch their work first and incorporate it into yours before 
# you’ll be allowed to push.

# Inspecting a remote

# If you want to see more information about a particular remote, you can use the 
# following Git command.

# This command shows which branch is automatically pushed to when you run git push 
# while on certain branches. It also shows you which remote branches on the server 
# you don’t yet have, which remote branches you have that have been removed from 
# the server, and multiple local branches that are able to merge automatically 
# with their remote-tracking branch when you run git pull.

git remote show <remote>

# Renaming and removing remotes

# You can run git remote rename to change a remote’s shortname. It’s worth mentioning
# that this changes all your remote-tracking branch names, too. What used to be 
# referenced at old-remote-shortname/master is now at new-remote-shortname/master.

git remote rename <old-remote> <new-remote>

# If you want to remove a remote for some reason — you’ve moved the server or are 
# no longer using a particular mirror, or perhaps a contributor isn’t contributing 
# anymore — you can either use git remote remove or git remote rm. Once you delete 
# the reference to a remote this way, all remote-tracking branches and configuration 
# settings associated with that remote are also deleted.

git remote remove <remote>