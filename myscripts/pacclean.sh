echo '-- clean up orphans'
echo 'pacman -Qdt'
echo 'pacman -Rns $(pacman -Qdtq)'
