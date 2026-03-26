#!/bin/sh -eux
# shellcheck shell=sh

make dist
sha256sum bash-completion-*.tar.* >sha256sums.txt
sha256sum -c sha256sums.txt
