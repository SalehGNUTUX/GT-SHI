#!/bin/bash
# install.sh - تثبيت تلقائي بدون قائمة

set -e

# ... (نفس المتغيرات والدوال السابقة)

main() {
    check_root
    mkdir -p "$TEMP_DIR" "$ICON_DIR"
    
    print_info "Installing GT-SHI (GUI + CLI)..."
    install_program "gt-shi-gui" "$GUI_SCRIPT_URL" "$GUI_ICON_URL" "$GUI_DESKTOP_URL"
    install_program "gt-shi-cli" "$CLI_SCRIPT_URL" "$CLI_ICON_URL" "$CLI_DESKTOP_URL"
    print_success "GT-SHI installed successfully!"
    
    rm -rf "$TEMP_DIR"
}

main
