#!/bin/bash
# GT-SHI Auto Installer - Simple Version

set -e

echo "Installing GT-SHI..."

# التحقق من الصلاحيات
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root: sudo bash install.sh"
    exit 1
fi

# إنشاء مجلد مؤقت
mkdir -p /tmp/gt-shi-install

# تنزيل الملفات
echo "Downloading files..."
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/bin/gt-shi-gui -O /tmp/gt-shi-install/gt-shi-gui
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/bin/gt-shi-cli -O /tmp/gt-shi-install/gt-shi-cli
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-gui-icon.png -O /tmp/gt-shi-install/gt-shi-gui.png
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-cli-icon.png -O /tmp/gt-shi-install/gt-shi-cli.png
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/share/applications/gt-shi-gui.desktop -O /tmp/gt-shi-install/gt-shi-gui.desktop
wget -q https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/share/applications/gt-shi-cli.desktop -O /tmp/gt-shi-install/gt-shi-cli.desktop

# تثبيت الملفات التنفيذية
echo "Installing binaries..."
cp /tmp/gt-shi-install/gt-shi-gui /usr/local/bin/
cp /tmp/gt-shi-install/gt-shi-cli /usr/local/bin/
chmod +x /usr/local/bin/gt-shi-gui /usr/local/bin/gt-shi-cli

# تثبيت الأيقونات
echo "Installing icons..."
mkdir -p /usr/share/icons/hicolor/256x256/apps
cp /tmp/gt-shi-install/gt-shi-gui.png /usr/share/icons/hicolor/256x256/apps/
cp /tmp/gt-shi-install/gt-shi-cli.png /usr/share/icons/hicolor/256x256/apps/

# تثبيت desktop files
echo "Installing desktop entries..."
sed -i 's|Icon=.*|Icon=gt-shi-gui.png|' /tmp/gt-shi-install/gt-shi-gui.desktop
sed -i 's|Icon=.*|Icon=gt-shi-cli.png|' /tmp/gt-shi-install/gt-shi-cli.desktop
cp /tmp/gt-shi-install/gt-shi-gui.desktop /usr/share/applications/
cp /tmp/gt-shi-install/gt-shi-cli.desktop /usr/share/applications/

# تنظيف
rm -rf /tmp/gt-shi-install

echo "GT-SHI installed successfully!"
echo "You can now run: gt-shi-gui or gt-shi-cli"
