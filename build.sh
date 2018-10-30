#!/bin/bash
set -e -x
cd $(dirname "$0")
bundle
bundle exec kramdown --template template.html.erb index.md > index.html.tmp
mv index.html.tmp index.html
