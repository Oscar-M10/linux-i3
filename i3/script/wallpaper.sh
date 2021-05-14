#!/usr/bin/bash
<<'EOF'
l=()
for x in "/home/oscuro/.config/i3"/*; do
    if [[ $x =~ .*\.jpg$ ]] ; then
        l+=("$x")
    fi;
done;

if [[ "${#l[@]}" == "0" ]] ; then
    exit
fi

wall="${l[RANDOM%${#l[@]}]}"

feh --bg-fill "$wall"
EOF

feh --bg-fill --randomize /home/oscar/.config/i3/wallpapers/*.jpg
