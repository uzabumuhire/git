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

# Creating tags

# Git supports two types of tags: lightweight and annotated.

# A lightweight tag is very much like a branch that doesn’t change — it’s just a 
# pointer to a specific commit.

# Annotated tags, however, are stored as full objects in the Git database. They’re 
# checksummed; contain the tagger name, email, and date; have a tagging message; 
# and can be signed and verified with GNU Privacy Guard (GPG).

# It’s generally recommended that you create annotated tags so you can have all
# this information; but if you want a temporary tag or for some reason don’t want
# to keep the other information, lightweight tags are available too.


# Annotated tags

# Creating an annotated tag in Git is simple. The easiest way is to specify -a 
# when you run the tag command. The -m specifies a tagging message, which is 
# stored with the tag. If you don’t specify a message for an annotated tag, 
# Git launches your editor so you can type it in.

git tag -a vX.Y.Z -m "Message ..."

# You can see the tag data along with the commit that was tagged by using the 
# git show command. That shows the tagger information, the date the commit was 
# tagged, and the annotation message before showing the commit information.

git show vX.Y.Z

# Lightweight tags

# A lightweight tag is basically the commit checksum stored in a file — no other
# information is kept. To create a lightweight tag, don’t supply any of the -a,
# -s, or -m options, just provide a tag name. if you run git show on the tag, you
# don’t see the extra tag information. The command just shows the commit.

git tag vX.Y.Z-lightweight

# Tagging later 

# You can also tag commits after you’ve moved past them. Run git log --pretty=oneline
# to show your commit history. To tag a commit, you specify the commit checksum (or 
# part of it) at the end of the command.

git tag -a vX.Y.Z 9fceb02
