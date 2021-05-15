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
