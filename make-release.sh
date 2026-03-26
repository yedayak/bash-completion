#!/bin/sh -eux
# shellcheck shell=sh

autoreconf -i
./configure
make dist -j
sha256sum bash-completion-*.tar.* >sha256sums.txt
sha256sum -c sha256sums.txt
