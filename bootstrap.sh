#!/bin/bash

for src in `find $(pwd) -name ".[^.]*"`
do
    dst=~/`basename $src`
    if [ -e $dst ]; then
        echo "$dst already exists"
    else
        echo "$dst -> $src"
        ln -s $src $dst
    fi
done