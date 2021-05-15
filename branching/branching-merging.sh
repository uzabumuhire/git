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

# Basic merge conflicts resolution

# If you changed the same part of the same file differently in the two branches
# you’re merging, Git won’t be able to merge them cleanly. This is called merge 
# conflict. Git hasn’t automatically created a new merge commit. It has paused the
# process while you resolve the conflict. If you want to see which files are
# unmerged at any point after a merge conflict, you can run git status.

git status

# Anything that has merge conflicts and hasn’t been resolved is listed as unmerged.
# Git adds standard conflict-resolution markers to the files that have conflicts,
# so you can open them manually and resolve those conflicts.

# The version in HEAD (your branch you had checked when you ran your merge command)
# is the top part of that block (everything above the =======), while the version in
# the branch, you want to merge in, is the bottom part. In order to resolve the 
# conflict, you have to either choose one side or the other or merge the contents
# yourself.

# This resolution has a little of each section, and the <<<<<<<, =======, and >>>>>>>
# lines have been completely removed. After you’ve resolved each of these sections
# in each conflicted file, run git add on each file to mark it as resolved. Staging
# the file marks it as resolved in Git.

git add <file-in-current-branch>
git add <file-in-another-branch>

# If you want to use a graphical tool to resolve these issues, you can run git mergetool,
# which fires up an appropriate visual merge tool and walks you through the conflicts.

git mergetool

# After you exit the merge tool, Git asks you if the merge was successful. If you tell the
# script that it was, it stages the file to mark it as resolved for you. You can run git
# status again to verify that all conflicts have been resolved.

git status

# If you’re happy with that, and you verify that everything that had conflicts has been
# staged, you can type git commit to finalize the merge commit. git commit will use the
# default commit message. If you think it would be helpful to others looking at this
# merge in the future, you can modify this commit message with details about how you
# resolved the merge and explain why you did the changes you made if these are not 
# obvious.

git commit 