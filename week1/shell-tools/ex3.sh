#!/usr/bin/env zsh

#
# Exercise 3 (should have been skipped)
#

it=1
while [[ $it -gt 0 ]]
do
  # Run the script and _append_ both stdout and stderr to the file
  ./rarely_fails.sh >> rarely_fails_buffer 2>> rarely_fails_buffer

  # Check if the script failed
  if [ $? -gt 0 ]; then
    cat rarely_fails_buffer
    rm rarely_fails_buffer
    printf "The script was executed %s times before it failed.\n" "$it"
    break
  fi

  # Increase the 'iterations' counter by 1
  let it++
done

