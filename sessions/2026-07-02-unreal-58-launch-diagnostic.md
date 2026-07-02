# 2026-07-02 - Unreal Engine 5.8 launch diagnostic

## Savol

Foydalanuvchi Epic Games Launcher'dan `Launch Unreal Engine 5.8` bosganda nima uchun UE 5.8
kirmayotganini so'radi.

## Tekshiruv

- `UnrealEditor.exe` processlari tekshirildi.
- Avval 4 ta `UnrealEditor.exe` instance va ko'p `cl.exe` processlari bor edi.
- Bu instance'lar project argumentisiz Epic login argumentlari bilan ochilgan edi.
- `Saved/Logs/Odilbek.log` tekshirildi.
- Fatal crash topilmadi; oldingi log `QUIT_EDITOR` bilan normal yopilgan.
- `UnrealEditor.exe` project faylsiz ochilganda ham UE oxirgi projectni avtomatik ochgani aniqlandi:

```text
D:/mirmironnnn oxirgiiii/Unreal Engine/Unreal Engine/Odilbek/Odilbek.uproject
```

- `-ProjectBrowser` bilan ochilganda umumiy `Unreal.log` Project Browser ishlaganini ko'rsatdi:

```text
LogProjectBrowser: Looking for projects...
LogSlate: Window 'Open Project' being destroyed
LogSlate: Window 'Unreal Engine 5.8' being destroyed
Cmd: QUIT_EDITOR
```

## Xulosa

UE 5.8 crash qilmayapti. Epic launch:

- yoki oxirgi `Odilbek.uproject`ni avtomatik ochyapti;
- yoki Project Browser ochilgach foydalanuvchi/oyna yopilishi sababli editor chiqib ketyapti.

Jiddiy fatal xato ko'rinmadi. `aqProf.dll`, `VtuneApi.dll`, `WinPixGpuCapturer.dll`,
Android/iOS/Linux SDK warninglari launchni bloklamaydi.

## Amaliy yechim

Project Browser kerak bo'lsa:

```powershell
"C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\Win64\UnrealEditor.exe" -ProjectBrowser
```

Odilbek projectni to'g'ridan-to'g'ri ochish kerak bo'lsa:

```powershell
"C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\Win64\UnrealEditor.exe" "D:\mirmironnnn oxirgiiii\Unreal Engine\Unreal Engine\Odilbek\Odilbek.uproject"
```
