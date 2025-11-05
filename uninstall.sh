#!/bin/bash

# GT-SHI Uninstall Script
set -e

# الألوان
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

check_root() {
    if [[ $EUID -ne 0 ]]; then
        print_error "This script must be run as root. Use sudo!"
        exit 1
    fi
}

uninstall_gt_shi() {
    print_warning "This will completely remove GT-SHI from your system."
    
    if [ -t 0 ]; then
        read -p "Are you sure you want to continue? [y/N]: " confirm
    else
        confirm="y"
    fi
    
    if [[ ! $confirm =~ [yY] ]]; then
        print_warning "Uninstall cancelled."
        exit 0
    fi
    
    echo "Starting GT-SHI uninstallation..."
    
    # إزالة الملفات التنفيذية
    echo "Removing binaries..."
    rm -f /usr/local/bin/gt-shi-gui
    rm -f /usr/local/bin/gt-shi-cli
    
    # إزالة الأيقونات
    echo "Removing icons..."
    rm -f /usr/share/icons/hicolor/256x256/apps/gt-shi-gui.png
    rm -f /usr/share/icons/hicolor/256x256/apps/gt-shi-cli.png
    rm -f /usr/share/icons/hicolor/128x128/apps/gt-shi-gui.png
    rm -f /usr/share/icons/hicolor/128x128/apps/gt-shi-cli.png
    rm -f /usr/share/icons/hicolor/64x64/apps/gt-shi-gui.png
    rm -f /usr/share/icons/hicolor/64x64/apps/gt-shi-cli.png
    rm -f /usr/share/pixmaps/gt-shi-gui.png
    rm -f /usr/share/pixmaps/gt-shi-cli.png
    
    # إزالة desktop entries
    echo "Removing desktop entries..."
    rm -f /usr/share/applications/gt-shi-gui.desktop
    rm -f /usr/share/applications/gt-shi-cli.desktop
    rm -f ~/.local/share/applications/gt-shi-gui.desktop
    rm -f ~/.local/share/applications/gt-shi-cli.desktop
    
    # إزالة ملفات التكوين والمجلدات
    echo "Removing configuration files..."
    rm -rf ~/.config/gt-shi
    rm -rf ~/.cache/gt-shi
    rm -rf ~/.local/share/gt-shi
    
    # تحديث قاعدة بيانات desktop
    echo "Updating desktop database..."
    update-desktop-database /usr/share/applications 2>/dev/null || true
    update-desktop-database ~/.local/share/applications 2>/dev/null || true
    
    # تنظيف أي ملفات مؤقتة متبقية
    rm -rf /tmp/gt-shi-*
    
    print_success "GT-SHI has been completely removed from your system!"
    echo "All binaries, icons, desktop entries, and configuration files have been deleted."
}

main() {
    check_root
    uninstall_gt_shi
}

main "$@"
