#!/bin/bash

set -e

need_rails=1

if [ $# -gt 0 ]; then
    filename=$1
    # Remove trailing line numbers (e.g., spec/my_spec.rb:33)
    grep_filename=`echo $1 | sed 's/:.*$//g'`

    # If we can't match 'spec_helper' then we have a stand-alone spec
    grep -r '\bspec_helper\b' $grep_filename > /dev/null || need_rails=''
else
    filename='spec'
fi

command='rspec'

if [ $need_rails ]; then
    command="ruby -S bundle exec $command"
fi

echo 'made it to the end'
RAILS_ENV=test $command $filename

