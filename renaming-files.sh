#!/bin/bash

# Renaming files

# To rename a file, use git mv command. 
git mv filename.ext filename

# Git figures out that it’s a rename implicitly, so it doesn’t matter if you rename 
# a file that way or with the mv command. The only real difference is that git mv 
# is one command instead of three — it’s a convenience function. More importantly, 
# you can use any tool you like to rename a file, and address the add/rm later, 
# before you commit.

# This is equivalent to running something like this.
mv filename.ext filename
git rm filename.ext
git add filename