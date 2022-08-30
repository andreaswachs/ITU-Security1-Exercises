#!/usr/bin/env zsh

#
# Exercise 1
#

# -h: human readable format
# -t: sort by time created
# -A: almost all files and directories ("." and ".." excluded)
# --block-size=M: ask for file sizes to be writte in megabytes
# -w 1: allow for one entry per line
ls -h -t -A --block-size=M -s -w 1


