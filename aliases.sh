# Creating aliases

# Git aliases can make your Git experience simpler, easier, and more familiar. Git
# doesn’t automatically infer your command if you type it in partially. If you don’t
# want to type the entire text of each of the Git commands, you can easily set up
# an alias for each command using git config.

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# This means that instead of typing git commit, you just need to type git ci. As
# you go on using Git, you’ll probably use other commands frequently as well; don’t
# hesitate to create new aliases.

# This technique can also be very useful in creating commands that you think should
# exist. For example, to correct the usability problem you encountered with unstaging
# a file, you can add your own unstage alias to Git.

git config --global alias.unstage 'reset HEAD --'

# This makes the following two commands equivalent.

git unstage <filename>
git reset HEAD -- <filename>

# It’s also common to add a last command.

git config --global alias.last 'log -1 HEAD'

# This way, you can see the last commit easily

git last

# Git simply replaces the new command with whatever you alias it for. However, maybe
# you want to run an external command, rather than a Git subcommand. In that case,
# you start the command with a ! character. This is useful if you write your own
# tools that work with a Git repository. We can demonstrate by aliasing git visual
# to run gitk.

git config --global alias.visual '!gitk'


