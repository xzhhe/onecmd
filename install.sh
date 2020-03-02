#!/bin/bash

gem uninstall onecmd --all --executables --quiet
cd /tmp
rm -rf onecmd
git clone https://github.com/xzhhe/onecmd.git
cd onecmd
bundle install
bundle exec rake install
