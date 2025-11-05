#!/bin/bash

# GT-SHI Installer Script
set -e

# الألوان للoutput
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# دالة للطباعة الملونة
print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# دالة للتحقق من صلاحيات root
check_root() {
    if [[ $EUID -ne 0 ]]; then
        print_error "This script must be run as root. Use sudo!"
        exit 1
    fi
}

# دالة لتنزيل الملف
download_file() {
    local url=$1
    local output=$2
    local description=$3
    
    print_info "Downloading $description..."
    if wget -q "$url" -O "$output"; then
        print_success "Downloaded $description"
    else
        print_error "Failed to download $description from $url"
        return 1
    fi
}

# دالة لتثبيت البرنامج
install_program() {
    local program=$1
    local script_url=$2
    local icon_url=$3
    local desktop_url=$4
    
    print_info "Installing $program..."
    
    # تنزيل البرنامج النصي
    download_file "$script_url" "$TEMP_DIR/$program" "$program script" || return 1
    
    # نسخ إلى /usr/local/bin
    cp "$TEMP_DIR/$program" "$BIN_DIR/"
    chmod +x "$BIN_DIR/$program"
    print_success "Installed $program to $BIN_DIR/"
    
    # تنزيل وتثبيت الأيقونة
    local icon_name="${program}.png"
    download_file "$icon_url" "$TEMP_DIR/$icon_name" "$program icon" || return 1
    cp "$TEMP_DIR/$icon_name" "$ICON_DIR/"
    print_success "Installed icon to $ICON_DIR/$icon_name"
    
    # تنزيل وتثبيت ملف .desktop
    download_file "$desktop_url" "$TEMP_DIR/${program}.desktop" "$program desktop file" || return 1
    
    # تحديث مسار الأيقونة في ملف .desktop
    sed -i "s|Icon=.*|Icon=$icon_name|" "$TEMP_DIR/${program}.desktop"
    
    cp "$TEMP_DIR/${program}.desktop" "$DESKTOP_DIR/"
    print_success "Installed desktop entry to $DESKTOP_DIR/${program}.desktop"
}

# دالة إلغاء التثبيت
uninstall_gt_shi() {
    print_warning "Removing GT-SHI..."
    rm -f "$BIN_DIR/gt-shi-gui"
    rm -f "$BIN_DIR/gt-shi-cli"
    rm -f "$ICON_DIR/gt-shi-gui.png"
    rm -f "$ICON_DIR/gt-shi-cli.png"
    rm -f "$DESKTOP_DIR/gt-shi-gui.desktop"
    rm -f "$DESKTOP_DIR/gt-shi-cli.desktop"
    update-desktop-database "$DESKTOP_DIR" 2>/dev/null || true
    print_success "GT-SHI has been completely removed from your system."
}

# دالة للعرض الرئيسي
show_menu() {
    echo "=========================================="
    echo "      GT-SHI Installation Script"
    echo "=========================================="
    echo "1) Install GT-SHI GUI only"
    echo "2) Install GT-SHI CLI only"
    echo "3) Install Both (GUI + CLI)"
    echo "4) Uninstall GT-SHI"
    echo "5) Exit"
    echo "=========================================="
}

# دالة الحصول على الاختيار
get_choice() {
    if [ -t 0 ]; then
        # الوضع التفاعلي العادي
        read -p "Please choose an option [1-5]: " choice
        echo "$choice"
    else
        # وضع الأنابيب - نثبت الكل تلقائياً
        print_info "Running in non-interactive mode. Installing both GUI and CLI..."
        echo "3"
    fi
}

# الدالة الرئيسية
main() {
    # تعريف المتغيرات هنا
    TEMP_DIR="/tmp/gt-shi-install"
    BIN_DIR="/usr/local/bin"
    ICON_DIR="/usr/share/icons/hicolor/256x256/apps"
    DESKTOP_DIR="/usr/share/applications"
    
    # الروابط
    GUI_SCRIPT_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/bin/gt-shi-gui"
    CLI_SCRIPT_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/bin/gt-shi-cli"
    GUI_ICON_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-gui-icon.png"
    CLI_ICON_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-cli-icon.png"
    GUI_DESKTOP_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/share/applications/gt-shi-gui.desktop"
    CLI_DESKTOP_URL="https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/share/applications/gt-shi-cli.desktop"
    
    check_root
    
    # إنشاء المجلدات
    mkdir -p "$TEMP_DIR"
    mkdir -p "$ICON_DIR"
    
    # التحقق من wget
    if ! command -v wget &> /dev/null; then
        print_error "wget is not installed. Please install it first:"
        print_info "Ubuntu/Debian: sudo apt install wget"
        print_info "Fedora: sudo dnf install wget"
        print_info "Arch: sudo pacman -S wget"
        exit 1
    fi
    
    show_menu
    choice=$(get_choice)
    
    case $choice in
        1)
            print_info "Installing GT-SHI GUI only..."
            install_program "gt-shi-gui" "$GUI_SCRIPT_URL" "$GUI_ICON_URL" "$GUI_DESKTOP_URL"
            print_success "GT-SHI GUI installed successfully!"
            ;;
        2)
            print_info "Installing GT-SHI CLI only..."
            install_program "gt-shi-cli" "$CLI_SCRIPT_URL" "$CLI_ICON_URL" "$CLI_DESKTOP_URL"
            print_success "GT-SHI CLI installed successfully!"
            ;;
        3)
            print_info "Installing Both GT-SHI GUI and CLI..."
            install_program "gt-shi-gui" "$GUI_SCRIPT_URL" "$GUI_ICON_URL" "$GUI_DESKTOP_URL"
            install_program "gt-shi-cli" "$CLI_SCRIPT_URL" "$CLI_ICON_URL" "$CLI_DESKTOP_URL"
            print_success "Both GT-SHI GUI and CLI installed successfully!"
            ;;
        4)
            uninstall_gt_shi
            ;;
        5)
            print_info "Exiting..."
            ;;
        *)
            print_error "Invalid option. Please choose 1-5."
            ;;
    esac
    
    # تنظيف
    rm -rf "$TEMP_DIR"
}

# تشغيل الدالة الرئيسية
main "$@"
