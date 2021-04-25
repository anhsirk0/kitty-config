#!/bin/bash

dir=~/.config/kitty

theme=$(ls $dir/themes | fzf)
if [ -z $theme ]; then
    exit
fi

sed -i '/include themes/s/\/.*/\/'$theme'/g' $dir/kitty.conf
