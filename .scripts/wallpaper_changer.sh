#!/bin/zsh

WALLPAPER_DIR="/home/kumo/Wallpapers"

while true; do
  # Tasodifiy rasmni tanlash
  RANDOM_IMAGE=$(ls "$WALLPAPER_DIR" | shuf -n 1)

  # Agar rasm topilgan bo'lsa, uni fon rasmi sifatida o'rnatish
  if [[ -n "$RANDOM_IMAGE" ]]; then
    swww img "$WALLPAPER_DIR/$RANDOM_IMAGE"
  fi

  # 1 daqiqa kutish
  sleep 60
done
