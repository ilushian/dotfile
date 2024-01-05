
handlerImage() {
theme=$HOME/.config/rofi/select/selectswww.rasi
  imagePath="$HOME/.wallpapers/menu/"
  linkhandel=$HOME/.wallpapers/
  image=$(ls $imagePath | while read A; do echo -en "$A\x00icon\x1f$imagePath$A\n"; done | rofi -dmenu -theme $theme )
  link_img="${imagePath}${image}"
echo $link_img
    if [ "$image" != "" ]; then
    cp $link_img -r $linkhandel/wallmenu
      dunstify $image "done !" -u critical -I $link_img
    fi
}
handlerImage
