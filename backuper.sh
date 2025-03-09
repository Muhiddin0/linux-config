#!/bin/zsh

# Zaxira qilish kerak bo'lgan papkalar
folders=(
  "$HOME/.config/nvim"
  "$HOME/.config/sway"
  "$HOME/.config/kitty"
  "$HOME/.config/foot"
  "$HOME/.config/WizTerm"
  "$HOME/.config/.scripts"
)

# Nusxa ko'chirishni boshlash
backup_dir="$HOME/backuper/"
mkdir -p "$backup_dir"

echo "\n📂 Nusxa ko'chirish jarayoni boshlandi..."
for folder in $folders; do
  if [[ -d "$folder" ]]; then
    cp -r "$folder" "$backup_dir"
    echo "✅ $folder -> $backup_dir"
  else
    echo "⚠️ $folder topilmadi, o'tkazib yuborildi."
  fi
done

echo "\n📦 Gitga yuklanmoqda..."
cd "$backup_dir" || exit

# O'zgarishlar borligini tekshirish
if [[ -n $(git status --porcelain) ]]; then
  git add .
  gita commit --push --use-sticker
  echo "\n🚀 Gitga muvaffaqiyatli yuklandi!"
else
  echo "\n✅ Hech qanday o'zgarish yo'q, gitga yuklanmadi."
fi
