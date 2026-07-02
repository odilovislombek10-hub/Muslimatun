# 2026-07-02 - Windows 11 diagnostic

## Maqsad

Windows 11 kompyuter holatini tekshirish, performance muammolarini aniqlash va Defender topgan
xavfli fayllarni xavfsiz tozalash.

## Xavfsizlik

- Windows Defender yoqilgan.
- Real-time protection yoqilgan.
- Signature oxirgi yangilangan vaqt: 2026-07-02 03:26:59.
- Quick scan ishga tushirildi: 2026-07-02 11:32:02 - 11:33:39.
- Hozir aktiv tahdid topilmadi:

```text
PUABundler:Win32/Rostpay          IsActive=False
PUADlManager:Win32/OfferCore      IsActive=False
PUABundler:Win32/YandexBundled    IsActive=False
HackTool:Win32/crack              IsActive=False
```

## Topilgan va tozalangan xavf

Defender tarixida `HackTool:Win32/crack` yozuvi bor edi. Fayl mavjudligi tekshirildi:

```text
H:\Crack\AdskNLM.exe = mavjud emas
G:\install\3dsmax\Autodesk 3ds Max 2025.3\Autodesk 3ds Max 2025.3\Autodesk.3ds.Max.2025.3.Multilingual.iso = mavjud
```

ISO ichida `Crack\AdskNLM.exe` bor deb Defender belgilagan. Shu ISO o'chirildi.

Natija:

```text
DELETED
```

## Disk joyi

O'chirishdan keyingi bo'sh joy:

```text
C:  93.49 GB free
D:  56.63 GB free
E: 156.96 GB free
F:  22.29 GB free
G: 123.32 GB free
```

Eng kam bo'sh joy `F:` diskda: 22.29 GB.

## Disk health

Barcha ko'ringan disklar `Healthy / OK`:

```text
TEAM T253512GB             SSD  Healthy OK
KINGSTON SNV2S1000G        SSD  Healthy OK
TOSHIBA DT01ACA100         HDD  Healthy OK
StoreJet Transcend         -    Healthy OK
SAMSUNG MZVLQ256HBJD-00BH1 SSD  Healthy OK
```

## Performance kuzatuvi

Eng katta RAM ishlatayotgan process:

```text
UnrealEditor.exe ~13.11 GB RAM
```

Startup'da ko'p dasturlar bor:

```text
AnyDesk
Autodesk Access Service
Chaos services
Claude
EpicGamesLauncher
FACEIT
Microsoft Edge auto launch
OneDrive
Yandex Browser auto launch
Zona
```

Performance yaxshilash uchun keyingi xavfsiz qadam: kerak bo'lmagan startup dasturlarini
foydalanuvchi ruxsati bilan o'chirish.

## Bajarilmagan

`sfc /verifyonly` admin console talab qilgani uchun bajarilmadi. Keyingi safar admin PowerShell
ochilgan bo'lsa, tizim fayllarini `sfc /scannow` va `DISM /Online /Cleanup-Image /RestoreHealth`
bilan tekshirish mumkin.
