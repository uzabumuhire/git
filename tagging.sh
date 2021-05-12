# Tagging

# Git has the ability to tag specific points in a repository’s history as being important.
# Typically, people use this functionality to mark release points (v1.0, v2.0 and so on).

# Listing your tags

# Listing the existing tags in Git is straightforward. Just type git tag (with optional
# -l or --list). This command lists the tags in alphabetical order; the order in which 
# they are displayed has no real importance.

# If you want just the entire list of tags, running the command git tag implicitly
# assumes you want a listing and provides one; the use of -l or --list in this case
# is optional.

git tag

# If, however, you’re supplying a wildcard pattern to match tag names, the use of -l 
# or --list is mandatory. You can search for tags that match a particular pattern.

git tag -l "v1.8.5*"