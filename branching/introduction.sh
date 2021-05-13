# Git branching

# Branching means you diverge from the main line of development and continue to do
# work without messing with that main line. The way Git branches is incredibly
# lightweight, making branching operations nearly instantaneous, and switching back
# and forth between branches generally just as fast. Git encourages workflows that
# branch and merge often, even multiple times in a day. Understanding and mastering
# this feature gives you a powerful and unique tool and can entirely change the way
# that you develop.

# To really understand the way Git does branching, we need to take a step back and
# examine how Git stores its data. Git doesn’t store data as a series of changesets
# or differences, but instead as a series of snapshots.

# When you make a commit, Git stores a commit object that contains a pointer to the
# snapshot of the content you staged. This object also contains the author’s name
# and email address, the message that you typed, and pointers to the commit or
# commits that directly came before this commit (its parent or parents): zero parents
# for the initial commit, one parent for a normal commit, and multiple parents for
# a commit that results from a merge of two or more branches.

# Staging the files computes a checksum for each one (the SHA-1 hash), stores that
# version of the file in the Git repository (Git refers to them as blobs), and adds
# that checksum to the staging area.

# When you create the commit, Git checksums each subdirectory and stores them as a
# tree object in the Git repository. Git then creates a commit object that has the
# metadata and a pointer to the root project tree so it can re-create that snapshot
# when needed.

# Your Git repository now contains the following objects: 
# - blobs, each representing the contents of one of the files
# - trees, that lists the contents of the directory and its subdirectory and
#   specifies which file names are stored as which blobs
# - one commit, with the pointer to that root tree and all the commit metadata.

# If you make some changes and commit again, the next commit stores a pointer to
# the commit that came immediately before it.

# A branch in Git is simply a lightweight movable pointer to one of these commits.
# The default branch name in Git is master. As you start making commits, you’re
# given a master branch that points to the last commit you made. Every time you
# commit, the master branch pointer moves forward automatically.

# The “master” branch in Git is not a special branch. It is exactly like any other
# branch. The only reason nearly every repository has one is that the git init
# command creates it by default and most people don’t bother to change it.

# Creating branches

# When you create a new branch, Git creates a new pointer for you to move around.
# To create a new branch called, use the git branch command. This creates a new
# pointer to the same commit you’re currently on. The git branch command only
# created a new branch — it didn’t switch to that branch.

git branch <branchname>

# To know what branch you’re currently on, Git keeps a special pointer called HEAD.
# In Git, this is a pointer to the local branch you’re currently on. You can easily
# see this by running a simple git log command  with --decorate option that shows
# you where the branch pointers are pointing. git log doesn’t show all the branches
# all the time. git log will only show commit history below the branch you’ve
# checked out. To show all of the branches, add --all to your git log command.

git log --oneline --decorate --graph --all

# Switching to a new branch

# To switch to an existing branch, you run the git checkout command. This moves HEAD
# to point to the branch you are switching to. Switching branches changes files in
# your working directory.  If you switch to an older branch, your working directory
# will be reverted to look like it did the last time you committed on that branch.
# If Git cannot do it cleanly, it will not let you switch at all.

git checkout <branchname>

# Your project history diverges when you create and switch to a branch, do some work
# on it, and then switche back to your main branch and do other work. Both of those
# changes are isolated in separate branches: you can switch back and forth between
# the branches and merge them together when you’re ready. You can also see this easily
# with the git log command. If you run git log --oneline --decorate --graph --all
# it will print out the history of your commits, showing where your branch pointers
# are and how your history has diverged.

# Because a branch in Git is actually a simple file that contains the 40 character
# SHA-1 checksum of the commit it points to, branches are cheap to create and destroy.
# Creating a new branch is as quick and simple as writing 41 bytes to a file 
# (40 characters and a newline). The Git branching process is always instantaneous.
# Because we’re recording the parents when we commit, finding a proper merge base for
# merging is automatically done for us and is generally very easy to do. These features
# help encourage developers to create and use branches often.

# It’s typical to create a new branch and want to switch to that new branch at the same
# time — this can be done in one operation

git checkout -b <newbranchname>

# From Git version 2.23 onwards you can use git switch instead of git checkout to:

# - Switch to an existing branch

git switch <branchname>

# - Create a new branch and switch to it. The -c flag stands for create, you can
#   also use the full flag: --create.

git switch -c <newbranchname>

# - Return to your previously checked out branch:

git switch -