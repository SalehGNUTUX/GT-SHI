# GT-SHI
🖥️ GT-SHI - System Hardware Information | 🖥️ GT-SHI - برنامج معلومات العتاد والنظام

![GT-SHI Logo](https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-gui-icon.png)

<div dir="rtl">

## 🌟 نظرة عامة
GT-SHI (GNUTUX System Hardware Info) هو أداة متكاملة لجمع وعرض معلومات النظام والعتاد، متوفرة بنسختين:
- **نسخة واجهة الأوامر (CLI)** - للاستخدام في الطرفية
- **نسخة واجهة رسومية (GUI)** - باستخدام Zenity للتفاعل السهل

## 🚀 التثبيت السريع

### الطريقة الأسهل (تثبيت دائم):
```bash
# تثبيت باستخدام سطر واحد مع خيارات متعددة
curl -fsSL https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh | sudo bash
```

### أو باستخدام wget:
```bash
wget -qO- https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh | sudo bash
```

### الطريقة التفاعلية (مع القائمة):
```bash
wget https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh
chmod +x install.sh
sudo ./install.sh
```

## 🛠️ الميزات
- عرض تفصيلي لمكونات العتاد
- معلومات النظام الأساسية
- إدارة العمليات والخدمات
- إنشاء تقارير كاملة
- واجهة متعددة اللغات (عربي/إنجليزي)
- خفيف الوزن وسريع
- تثبيت دائم مع أيقونات النظام
- اختصارات في قائمة البرامج

## 📸 لقطات شاشة

### الواجهة الرسومية (GUI)
![واجهة النسخة الرسومية](https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-gui-icon.png)

### الواجهة الطرفية (CLI)
![واجهة النسخة الطرفية](https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-cli-icon.png)

## 📦 التثبيت المتقدم

### التثبيت من المصدر:
```bash
git clone https://github.com/SalehGNUTUX/GT-SHI.git
cd GT-SHI
chmod +x install.sh
sudo ./install.sh
```

### التثبيت اليدوي للملفات:
```bash
# تنزيل الملفات مباشرة
wget https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/bin/gt-shi-gui
wget https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/bin/gt-shi-cli

# جعلها قابلة للتنفيذ
chmod +x gt-shi-gui gt-shi-cli

# نقل إلى مسار النظام
sudo mv gt-shi-gui gt-shi-cli /usr/local/bin/
```

## 🗑️ إلغاء التثبيت

### الطريقة السريعة:
```bash
curl -fsSL https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/uninstall.sh | sudo bash
```

### الطريقة التفاعلية:
```bash
wget https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/uninstall.sh
chmod +x uninstall.sh
sudo ./uninstall.sh
```

### من خلال المثبت الرئيسي:
```bash
sudo ./install.sh
# ثم اختر الخيار 4 (Uninstall GT-SHI)
```

## 📦 النسخة المحمولة (AppImage)

### التشغيل المحمول (بدون تثبيت):
```bash
# تنزيل الحزمة
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-GUI-x86_64.AppImage
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-CLI-x86_64.AppImage

# منح صلاحيات التنفيذ
chmod +x GT-SHI-*.AppImage

# التشغيل الفوري
./GT-SHI-GUI-x86_64.AppImage
./GT-SHI-CLI-x86_64.AppImage
```

**مميزات النسخة المحمولة:**
- لا تحتاج لصلاحيات مدير النظام
- لا تترك أثاراً في النظام
- مثالية للاستخدام على وسائط USB

### التثبيت باستخدام Gearlever:
```bash
# تثبيت أداة Gearlever أولاً
sudo flatpak install flathub it.mijorus.gearlever

# تثبيت GT-SHI بشكل دائم
flatpak run it.mijorus.gearlever --install GT-SHI-GUI-x86_64.AppImage

# التشغيل بعد التثبيت
gt-shi-gui  # للنسخة الرسومية
gt-shi-cli  # للنسخة الطرفية
```

## 🎯 الاستخدام

### بعد التثبيت الدائم:
```bash
# تشغيل النسخة الرسومية
gt-shi-gui

# تشغيل النسخة الطرفية
gt-shi-cli
```

### البحث في قائمة التطبيقات:
- ابحث عن "GT-SHI" في قائمة البرامج
- اختر بين النسخة الرسومية أو الطرفية

## 🔄 التحديث

### للتثبيت الدائم:
```bash
# سيتم تحديث البرنامج تلقائياً عند إعادة التشغيل
sudo ./install.sh
```

### للنسخة المحمولة:
1. حمل الإصدار الجديد من صفحة الإصدارات
2. استبدل ملف AppImage القديم
3. أعد منح صلاحيات التنفيذ: `chmod +x GT-SHI-*.AppImage`

## 🐛 الإبلاغ عن مشاكل

إذا واجهت أي مشاكل:
1. تأكد من تثبيت جميع التبعيات المطلوبة
2. تحقق من صلاحيات التنفيذ
3. أبلغ عن المشكلة في [صفحة Issues](https://github.com/SalehGNUTUX/GT-SHI/issues)

## 🤝 المساهمة
نرحب بجميع المساهمات! يرجى مراجعة [إرشادات المساهمة](CONTRIBUTING.md) قبل البدء.

## 📜 الرخصة
هذا المشروع مرخص تحت [رخصة MIT](LICENSE).

## 👥 المطور
- **صالح العلي** - [SalehGNUTUX](https://github.com/SalehGNUTUX)

</div>

---

# 🖥️ GT-SHI - System Hardware Information

## 🌟 Overview
GT-SHI (GNUTUX System Hardware Info) is a comprehensive tool for gathering and displaying system/hardware information, available in two versions:
- **CLI Version** - For terminal use
- **GUI Version** - Using Zenity for easy interaction

## 🚀 Quick Installation

### Easiest Way (Permanent Install):
```bash
# One-line installation with multiple options
curl -fsSL https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh | sudo bash
```

### Or using wget:
```bash
wget -qO- https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh | sudo bash
```

### Interactive Method (With Menu):
```bash
wget https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/install.sh
chmod +x install.sh
sudo ./install.sh
```

## 🛠️ Features
- Detailed hardware components information
- Basic system information
- Process and services management
- Comprehensive report generation
- Multi-language interface (Arabic/English)
- Lightweight and fast
- Permanent installation with system icons
- Application menu shortcuts

## 📸 Screenshots

### GUI Version
![GUI Interface](https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-gui-icon.png)

### CLI Version
![CLI Interface](https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/gt-SHI-cli-icon.png)

## 📦 Advanced Installation

### Install from Source:
```bash
git clone https://github.com/SalehGNUTUX/GT-SHI.git
cd GT-SHI
chmod +x install.sh
sudo ./install.sh
```

### Manual File Installation:
```bash
# Download files directly
wget https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-GUI.AppDir/usr/bin/gt-shi-gui
wget https://github.com/SalehGNUTUX/GT-SHI/raw/main/gt-shi%20APPIAMGE%20BIULD/GT-SHI-CLI.AppDir/usr/bin/gt-shi-cli

# Make executable
chmod +x gt-shi-gui gt-shi-cli

# Move to system path
sudo mv gt-shi-gui gt-shi-cli /usr/local/bin/
```

## 🗑️ Uninstallation

### Quick Method:
```bash
curl -fsSL https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/uninstall.sh | sudo bash
```

### Interactive Method:
```bash
wget https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/uninstall.sh
chmod +x uninstall.sh
sudo ./uninstall.sh
```

### Through Main Installer:
```bash
sudo ./install.sh
# Then choose option 4 (Uninstall GT-SHI)
```

## 📦 Portable Version (AppImage)

### Portable Usage (Without Installation):
```bash
# Download package
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-GUI-x86_64.AppImage
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-CLI-x86_64.AppImage

# Make executable
chmod +x GT-SHI-*.AppImage

# Run immediately
./GT-SHI-GUI-x86_64.AppImage
./GT-SHI-CLI-x86_64.AppImage
```

**Portable Version Features:**
- No admin privileges required
- Leaves no traces in the system
- Ideal for USB media usage

### Installation using Gearlever:
```bash
# Install Gearlever first
sudo flatpak install flathub it.mijorus.gearlever

# Install GT-SHI permanently
flatpak run it.mijorus.gearlever --install GT-SHI-GUI-x86_64.AppImage

# Run after installation
gt-shi-gui  # for GUI version
gt-shi-cli  # for CLI version
```

## 🎯 Usage

### After Permanent Installation:
```bash
# Run GUI version
gt-shi-gui

# Run CLI version
gt-shi-cli
```

### Search in Application Menu:
- Search for "GT-SHI" in your applications menu
- Choose between GUI or CLI version

## 🔄 Updating

### For Permanent Installation:
```bash
# Software will be updated automatically when reinstalled
sudo ./install.sh
```

### For Portable Version:
1. Download new version from releases page
2. Replace old AppImage file
3. Re-set execute permissions: `chmod +x GT-SHI-*.AppImage`

## 🐛 Troubleshooting

If you encounter any issues:
1. Ensure all required dependencies are installed
2. Check execution permissions
3. Report the issue on [Issues page](https://github.com/SalehGNUTUX/GT-SHI/issues)

## 🤝 Contributing
We welcome all contributions! Please review the [contribution guidelines](CONTRIBUTING.md) before getting started.

## 📜 License
This project is licensed under the [MIT License](LICENSE).

## 👥 Developer
- **Saleh Alali** - [SalehGNUTUX](https://github.com/SalehGNUTUX)
```

## الملفات الإضافية المطلوبة:

### 1. CONTRIBUTING.md
```markdown
# إرشادات المساهمة

## كيفية المساهمة
1. Fork المستودع
2. إنشاء فرع للميزة الجديدة (`git checkout -b feature/AmazingFeature`)
3. Commit التغييرات (`git commit -m 'Add some AmazingFeature'`)
4. Push إلى الفرع (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## معايير الكود
- استخدام تنسيق متسق للكود
- كتابة تعليقات توضيحية عند الحاجة
- اختبار التغييرات قبل الرفع

## الإبلاغ عن مشاكل
- استخدم قالب Issue الموجود
- قدم وصفاً مفصلاً للمشكلة
- أرفق لقطات شاشة إذا أمكن
```

### 2. LICENSE
```text
GPL V2 License

Copyright (c) 2025 gnutux

Permission is hereby granted...
