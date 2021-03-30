#!/bin/bash

dir=~/.config/kitty

theme=$(ls $dir/themes | fzf)

sed -i '/include themes/s/\/.*/\/'$theme'/g' $dir/kitty.conf
