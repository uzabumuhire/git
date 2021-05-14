# Basic branching 

# To create a new branch and switch to it at the same time, you can run the 
# git checkout command with the -b switch.

git checkout -b <newbranchname>

# This is equivalent to 

git branch <newbranchname>
git checkout <newbranchname>

# Note that if your working directory or staging area has uncommitted changes that
# conflict with the branch you’re checking out, Git won’t let you switch branches.
# It’s best to have a clean working state when you switch branches. There are ways
# to get around this (namely, stashing and commit amending).

# When you switch branches, Git resets your working directory to look like it did
# the last time you committed on that branch. It adds, removes, and modifies files
# automatically to make sure your working copy is what the branch looked like on
# your last commit to it.
