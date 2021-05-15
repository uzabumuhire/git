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

