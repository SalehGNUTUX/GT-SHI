# GT-SHI
🖥️ GT-SHI - System Hardware Information | 🖥️ GT-SHI - برنامج معلومات العتاد والنظام

ملف `README.md` متعدد اللغات (العربية أولاً ثم الإنجليزية) لمستودع GT-SHI على GitHub:

<div dir="rtl">

## 🌟 نظرة عامة
GT-SHI (GNUTUX System Hardware Info) هو أداة متكاملة لجمع وعرض معلومات النظام والعتاد، متوفرة بنسختين:
- **نسخة واجهة الأوامر (CLI)** - للاستخدام في الطرفية
- **نسخة واجهة رسومية (GUI)** - باستخدام Zenity للتفاعل السهل

## 📥 التثبيت
### الطريقة المباشرة (AppImage):

# النسخة الرسومية
```bash
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-GUI-x86_64.AppImage
chmod +x GT-SHI-GUI-x86_64.AppImage
./GT-SHI-GUI-x86_64.AppImage
```

# النسخة الطرفية
```bash
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-CLI-x86_64.AppImage
chmod +x GT-SHI-CLI-x86_64.AppImage
./GT-SHI-CLI-x86_64.AppImage
```

### من المصدر:
```bash
git clone https://github.com/SalehGNUTUX/GT-SHI.git
cd GT-SHI
chmod +x GT-SHI-*.sh
```

## 🛠️ الميزات
- عرض تفصيلي لمكونات العتاد
- معلومات النظام الأساسية
- إدارة العمليات والخدمات
- إنشاء تقارير كاملة
- واجهة متعددة اللغات (عربي/إنجليزي)
- خفيف الوزن وسريع

## 📸 لقطات شاشة
![واجهة النسخة الرسومية](screenshots/gui-screenshot.png)
![واجهة النسخة الطرفية](screenshots/cli-screenshot.png)

## 🤝 المساهمة
نرحب بجميع المساهمات! يرجى مراجعة [إرشادات المساهمة](CONTRIBUTING.md) قبل البدء.

## 📜 الرخصة
هذا المشروع مرخص تحت [رخصة MIT](LICENSE).

</div>

---

# 🖥️ GT-SHI - System Hardware Information

## 🌟 Overview
GT-SHI (GNUTUX System Hardware Info) is a comprehensive tool for gathering and displaying system/hardware information, available in two versions:
- **CLI Version** - For terminal use
- **GUI Version** - Using Zenity for easy interaction

## 📥 Installation
### Direct Download (AppImage):
```bash
# GUI Version
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-GUI-x86_64.AppImage
chmod +x GT-SHI-GUI-x86_64.AppImage
./GT-SHI-GUI-x86_64.AppImage

# CLI Version
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI-CLI-x86_64.AppImage
chmod +x GT-SHI-CLI-x86_64.AppImage
./GT-SHI-CLI-x86_64.AppImage
```

### From Source:
```bash
git clone https://github.com/SalehGNUTUX/GT-SHI.git
cd GT-SHI
chmod +x GT-SHI-*.sh
```

## 🛠️ Features
- Detailed hardware components information
- Basic system information
- Process and services management
- Comprehensive report generation
- Multi-language interface (Arabic/English)
- Lightweight and fast

## 📸 Screenshots
![GUI Interface](screenshots/gui-screenshot.png)
![CLI Interface](screenshots/cli-screenshot.png)

## 🤝 Contributing
We welcome all contributions! Please review the [contribution guidelines](CONTRIBUTING.md) before getting started.

## 📜 License
This project is licensed under the [MIT License](LICENSE).
```

### ملاحظات هامة:

1. **الهيكل المقترح للمستودع**:
   ```
   GT-SHI/
   ├── GT-SHI-CLI.AppDir/
   ├── GT-SHI-GUI.AppDir/
   ├── screenshots/
   │   ├── cli-screenshot.png
   │   └── gui-screenshot.png
   ├── LICENSE
   ├── CONTRIBUTING.md
   └── README.md
   ```
```
2. **لقطات الشاشة**:

   - ستحتاج لإضافة لقطات فعلية للواجهتين في مجلد screenshots
   - يمكنك التقاطها باستخدام:
     ```bash
     scrot -u -d 5 screenshot.png
     ```

3. **الملفات الإضافية**:
```bash
   - `LICENSE`: ملف الرخصة (يفضل استخدام MIT License)
   - `CONTRIBUTING.md`: إرشادات المساهمة في المشروع
```

4. **النشر على GitHub**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/SalehGNUTUX/GT-SHI.git
   git push -u origin main
   ```

5. **إنشاء الإصدارات**:
   - عند تحميل ملفات AppImage، أضفها كإصدار (Release) جديد في GitHub

