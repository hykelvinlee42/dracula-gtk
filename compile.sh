#!/bin/bash

versions=("3.20" "4.0")

for version in ${versions[@]}; do
	npx node-sass ./gtk-$version/gtk.scss ./gtk-$version/gtk.css
	npx node-sass ./gtk-$version/gtk-dark.scss ./gtk-$version/gtk-dark.css
done

npx node-sass ./gnome-shell/gnome-shell.scss ./gnome-shell/gnome-shell.css
npx node-sass ./gnome-shell/v40/gnome-shell.scss ./gnome-shell/v40/gnome-shell.css

# create compressed theme package
cp -r ./ ../Dracula-Red/
tar -cJf ../Dracula-Red.tar.xz ../Dracula-Red/
