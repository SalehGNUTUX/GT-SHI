#!/bin/bash

# اسم الأيقونة الأصلية عالية الدقة للنسخة الطرفية
SOURCE_ICON="gt-SHI-cli-icon.png"
APPDIR="GT-SHI-CLI.AppDir"
ICON_SIZES=(16 32 64 128 256 512)

echo "🎨 توليد الأيقونات للنسخة الطرفية..."

# إنشاء مجلد الأيقونات الأساسي
mkdir -p "$APPDIR/usr/share/icons/hicolor"

for size in "${ICON_SIZES[@]}"; do
    TARGET_DIR="$APPDIR/usr/share/icons/hicolor/${size}x${size}/apps"
    mkdir -p "$TARGET_DIR"
    if command -v magick &> /dev/null; then
        magick "$SOURCE_ICON" -resize ${size}x${size} "$TARGET_DIR/gt-shi-cli.png"
        echo "✅ تم إنشاء: $TARGET_DIR/gt-shi-cli.png"
    else
        echo "❌ ImageMagick غير مثبت. يرجى تثبيته أولاً."
        exit 1
    fi
done

# إنشاء رابط رمزي للأيقونة الأساسية
mkdir -p "$APPDIR"
ln -sf "usr/share/icons/hicolor/256x256/apps/gt-shi-cli.png" "$APPDIR/gt-shi-cli.png"

echo "🎉 تم توليد جميع الأيقونات للنسخة الطرفية بنجاح."
