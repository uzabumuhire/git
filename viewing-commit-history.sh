#!/bin/bash

# Viewing the commit history

# By default, with no arguments, git log lists the commits made in that repository 
# in reverse chronological order; that is, the most recent commits show up first. 
# This command lists each commit with its SHA-1 checksum, the author’s name and 
# email, the date written, and the commit message.

git log

# A huge number and variety of options to the git log command are available to 
# show you exactly what you’re looking for.

# One of the more helpful options is -p or --patch, which shows the difference 
# (the patch output) introduced in each commit. You can also limit the number of 
# log entries displayed, such as using -2 to show only the last two entries.

git log -p -2

# This is very helpful for code review or to quickly browse what happened during 
# a series of commits that a collaborator has added. You can also use a series of 
# summarizing options with git log.  If you want to see some abbreviated stats for 
# each commit, you can use the --stat option.  The --stat option prints below each 
# commit entry a list of modified files, how many files were changed, and how many 
# lines in those files were added and removed. It also puts a summary of the 
# information at the end.

git log --stat

# Another really useful option is --pretty. This option changes the log output to 
# formats other than the default. A few prebuilt option values are available for 
# you to use. The oneline value for this option prints each commit on a single line, 
# which is useful if you’re looking at a lot of commits. In addition, the short, 
# full, and fuller values show the output in roughly the same format but with less 
# or more information, respectively.

git log --pretty=oneline

# The most interesting option value is format, which allows you to specify your own 
# log output format. This is especially useful when you’re generating output for 
# machine parsing — because you specify the format explicitly, you know it won’t 
# change with updates to Git.

git log --pretty=format:"%h - %an, %ar : %s"

# The oneline and format option values are particularly useful with another log option 
# called --graph. This option adds a nice little ASCII graph showing your branch and 
# merge history.

git log --pretty=format:"%h - %an, %ar : %s" --graph

# git log takes a number of useful limiting options; that is, options that let you show 
# only a subset of commits. You can do -<n>, where n is any integer to show the last n 
# commits. In reality, you’re unlikely to use that often, because Git by default pipes 
# all output through a pager so you see only one page of log output at a time.

git log --pretty=format:"%h - %an, %ar : %s" --graph -25

# The time-limiting options such as --since and --until are very useful. This command 
# works with lots of formats — you can specify a specific date like "2008-01-15", or 
# a relative date such as "2 years 1 day 3 minutes ago".

# To get the list of commits made in the last two weeks.

git log --pretty=format:"%h - %an, %ar : %s" --graph --since=2.weeks 

# To get the list of commits made 1 hour and 30 minutes ago

git log --pretty=format:"%h - %an, %ar : %s" --graph --since="1 hour 30 minutes ago" 

# To get the list of commits made 3 hours ago until 1 hour and 30 minutes ago
git log --pretty=format:"%h - %an, %ar : %s" --graph --since="3 hour ago" --until="1hour 30 minutes ago"

# You can also filter the list to commits that match some search criteria. The --author 
# option allows you to filter on a specific author, and the --grep option lets you 
# search for keywords in the commit messages.

git log --pretty=format:"%h - %an, %ar : %s" --graph --since="3 hour ago" --grep="files"
git log --pretty=format:"%h - %an, %ar : %s" --graph --since="3 hour ago" --author="Jean Jacques Uzabumuhire"

# The last really useful option to pass to git log as a filter is a path. If you specify 
# a directory or file name, you can limit the log output to commits that introduced a 
# change to those files. This is always the last option and is generally preceded by 
# double dashes (--) to separate the paths from the options.

# Depending on the workflow used in your repository, it’s possible that a sizable percentage 
# of the commits in your log history are just merge commits, which typically aren’t very 
# informative. To prevent the display of merge commits cluttering up your log history, simply 
# add the log option --no-merges.

git log --pretty=format:"%h - %an, %ar : %s" --graph --since="3 hour ago" --author="Jean Jacques Uzabumuhire" --no-merges -- test/

# Another really helpful filter is the -S option, which takes a string and shows only 
# those commits that changed the number of occurrences of that string.

# To find the last commit that added or removed a reference to a specific function.
git log -S function_name
