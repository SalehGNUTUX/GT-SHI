# GT-SHI
🖥️ GT-SHI - System Hardware Information | 🖥️ GT-SHI - برنامج معلومات العتاد والنظام

ملف `README.md` متعدد اللغات (العربية أولاً ثم الإنجليزية) لمستودع GT-SHI على GitHub:

![image](https://github.com/user-attachments/assets/a9cb4aae-c6c2-4d6a-9a4f-38aa6ace3cb5) ![image](https://github.com/user-attachments/assets/46c36349-93a0-41f5-afa9-7cc3321b1ddd)


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
![واجهة النسخة الرسومية]![image](https://github.com/user-attachments/assets/b962a10e-45b1-49f6-bf2b-0f9e048fbcb6)


![واجهة النسخة الطرفية]![image](https://github.com/user-attachments/assets/07f6e676-b5c9-4aad-90a1-9690ad5e419a)


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
![GUI Interface]![image](https://github.com/user-attachments/assets/6d322429-0af0-4e66-9001-972402a62066)


![CLI Interface]![image](https://github.com/user-attachments/assets/d8fecc79-ca0a-4b66-b620-e069517c5d73)



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

   5. فقرة مخصصة لحزم AppImage مع تفصيل لطرق استخدامها، يمكن إضافتها كتتمة لملف README:

## 📦 حزم AppImage - الاستخدام المحمول والتثبيت

### 1. التشغيل المحمول (بدون تثبيت)
```bash
# تنزيل الحزمة (اختر النسخة المناسبة):
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI_.GUI.-x86_64.AppImage

```

```bash
wget https://github.com/SalehGNUTUX/GT-SHI/releases/download/v1.0/GT-SHI_.CLI.-x86_64.AppImage

```

# منح صلاحيات التنفيذ:

```bash
chmod +x GT-SHI_*.AppImage

```
# التشغيل الفوري:

```bash
./GT-SHI_.GUI.-x86_64.AppImage

```

```bash
./GT-SHI_.CLI.-x86_64.AppImage
```
**مميزات النسخة المحمولة:**
- لا تحتاج لصلاحيات مدير النظام
- لا تترك أثاراً في النظام
- مثالية للاستخدام على وسائط USB

### 2. التثبيت باستخدام Gearlever
```bash
# تثبيت أداة Gearlever أولاً:
flatpak install flathub it.mijorus.gearlever

```

# تثبيت GT-SHI بشكل دائم:

```bash
flatpak run it.mijorus.gearlever --install GT-SHI_.GUI.-x86_64.AppImage

```
# التشغيل بعد التثبيت:

```bash
gt-shi-gui  # للنسخة الرسومية
gt-shi-cli  # للنسخة الطرفية
```
**مميزات التثبيت عبر Gearlever:**
- تكامل كامل مع قائمة التطبيقات
- تحديثات سهلة عبر إعادة تنزيل AppImage
- دعم لإشعارات النظام

### 3. التثبيت اليدوي (للمستخدمين المتقدمين)
```bash
# انقل الملف إلى مجلد التطبيقات:
mkdir -p ~/.local/bin
mv GT-SHI_.GUI.-x86_64.AppImage ~/.local/bin/gt-shi-gui

# إنشاء اختصار في قائمة التطبيقات:
mkdir -p ~/.local/share/applications
wget https://raw.githubusercontent.com/SalehGNUTUX/GT-SHI/main/gt-shi-gui.desktop -P ~/.local/share/applications/

# تحديث قاعدة بيانات التطبيقات:
update-desktop-database ~/.local/share/applications
```

## 🔄 كيفية التحديث
1. حمل الإصدار الجديد من صفحة الإصدارات
2. استبدل ملف AppImage القديم
3. (للمثبت عبر Gearlever) أعد تنفيذ أمر التثبيت

## 🛠️ إدارة البرنامج
| الإجراء | الأمر |
|---------|-------|
| إلغاء التثبيت | `flatpak run it.mijorus.gearlever --uninstall gt-shi-gui` |
| عرض التطبيقات المثبتة | `flatpak run it.mijorus.gearlever --list` |
| إنشاء اختصار مخصص | `gearlever --install --create-shortcut=~/Desktop GT-SHI_.GUI.-x86_64.AppImage` |

> ملاحظة: حزم AppImage لا تتطلب أي تبعيات إضافية وتعمل على معظم توزيعات لينكس الحديثة.

