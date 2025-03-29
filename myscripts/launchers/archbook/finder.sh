selection=$(fd . --hidden --type file $HOME 2>/dev/null | \
    sed "s;$HOME;~;" | \
    rofi -m -1 -sort -sorting-method fzf -disable-history -dmenu -no-custom -p " File Finder:" | \
    sed "s;\~;$HOME;"
)

xdg-open "$selection" 
