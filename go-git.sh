#!/bin/bash
############################
# .make.sh
# This script sets up git
############################

git config --global user.name cyberspeck
git config --global user.email cyberspeck@users.noreply.github.com
git config --global push.default simple
git config --global credential.helper "cache --timeout=3600"
