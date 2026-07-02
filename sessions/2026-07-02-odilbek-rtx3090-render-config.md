# 2026-07-02 - Odilbek RTX 3090 render config

## Maqsad

Odilbek Unreal Engine 5.8 loyihasida RTX 3090 uchun yuqori sifatli ArchViz render sozlamalarini
qo'yish: tiniq texture/materiallar, silliq quyosh soyasi, Lumen hardware ray tracing, ray traced
shadows/reflections/skylight va Path Tracing viewport/cinematic rejimi.

## O'zgargan fayllar

```text
D:\mirmironnnn oxirgiiii\Unreal Engine\Unreal Engine\Odilbek\Config\DefaultEngine.ini
D:\mirmironnnn oxirgiiii\Unreal Engine\Unreal Engine\Odilbek\Config\DefaultDeviceProfiles.ini
D:\mirmironnnn oxirgiiii\Unreal Engine\Unreal Engine\Odilbek\Config\DefaultScalability.ini
```

## Asosiy sozlamalar

- Lumen realtime GI/reflections hardware ray tracing bilan yoqildi.
- Ray traced shadows, skylight va reflections yoqildi.
- Path Tracing yoqildi, viewport/cinematic mode uchun 256 samples va 12 bounces berildi.
- Texture streaming pool RTX 3090 24GB VRAM uchun 16GB qilib oshirildi.
- Nanite detail oshirildi: `r.Nanite.MaxPixelsPerEdge=0.5`.
- Virtual shadow maps uchun physical pages va shadow resolution oshirildi.
- Volumetric fog, AO, SSR, reflection capture sifati oshirildi.
- Cinematic scalability (`sg.*Quality=4`) qo'yildi.

## Muhim eslatma

Lumen va Path Tracing bir vaqtning o'zida bitta render mode sifatida aralashib ishlamaydi.
Lumen realtime viewport/gameplay uchun, Path Tracing esa viewport/cinematic/offline render uchun
yoqib qo'yildi.

## Git

Odilbek repo commit:

```text
4291d68 Tune RTX 3090 archviz render quality
```

Remote:

```text
https://github.com/odilovislombek10-hub/Odilbek.git
```
