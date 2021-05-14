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

# Basic merging

# In order to merge branch-B into branch-A, all you have to do is check out to
# branch-A (the branch you swish to you wish to merge into) and then run the
# git merge command.

git checkout <branch-A>
git merge <branch-B>

# To phrase that another way, when you try to merge one commit with a commit that
# can be reached by following the first commit’s history, Git simplifies things
# by moving the pointer forward because there is no divergent work to merge
# together — this is called a “fast-forward.”

# If the commit on the branch you’re on isn’t a direct ancestor of the branch you’re
# merging in, Git has to do some work. In this case, Git does a simple three-way
# merge, using the two snapshots pointed to by the branch tips and the common
# ancestor of the two.

# Instead of just moving the branch pointer forward, Git creates a new snapshot
# that results from this three-way merge and automatically creates a new commit
# that points to it. This is referred to as a merge commit, and is special in that
# it has more than one parent.

# Now that your work is merged in, you have no further need for the  branch-B. You
# can close the issue in your issue-tracking system, and delete the branch.

# Delete the branch that just been merged into another branch, because you no
# longer need it — the branch, you merged into, points at the same place. You can 
# delete it with the -d option to git branch.

git branch -d <branch-B>
