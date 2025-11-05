#!/bin/bash
# uninstall.sh - إلغاء التثبيت

set -e

# ... (نفس المتغيرات والدوال السابقة)

main() {
    check_root
    
    print_warning "This will remove GT-SHI from your system."
    if [ -t 0 ]; then
        read -p "Are you sure? [y/N]: " confirm
    else
        confirm="y"
    fi
    
    if [[ $confirm =~ [yY] ]]; then
        uninstall_gt_shi
    else
        print_info "Uninstall cancelled."
    fi
}

main
