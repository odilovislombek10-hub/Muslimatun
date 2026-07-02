# 2026-07-02 - UE 5.8 ConsoleVariables restore and RT memory fix

## Muammo

Yangi UE 5.8 project ochilganda ham viewportda ray tracing geometry memory warning chiqdi:

```text
RAY TRACING GEOMETRY - ALWAYS RESIDENT MEMORY EXCEEDS 20% OF THE BUDGET
RAY TRACING GEOMETRY - REQUESTED MEMORY OVER BUDGET
```

Bu faqat `Odilbek` projectiga bog'liq emasligi aniqlandi.

## Sabab

UE 5.8 install ichidagi global faylda custom CVars yozilgan edi:

```text
C:\Program Files\Epic Games\UE_5.8\Engine\Config\ConsoleVariables.ini
```

U yerda texture streaming va ray tracing geometry memory bo'yicha global override'lar bor edi.
Shuning uchun yangi projectlarda ham warning chiqayotgan edi.

## Qilingan ish

- `ConsoleVariables.ini` backup qilindi.
- Global texture/raytracing override bloki olib tashlandi.
- Qolgan active global CVars ham comment qilindi.
- Yakuniy tekshiruv:

```text
NO_ACTIVE_GLOBAL_CVARS
```

Backup fayllar:

```text
C:\Program Files\Epic Games\UE_5.8\Engine\Config\ConsoleVariables.ini.backup_20260702_1230
C:\Program Files\Epic Games\UE_5.8\Engine\Config\ConsoleVariables.ini.backup_clean_before_20260702_124223
C:\Program Files\Epic Games\UE_5.8\Engine\Config\ConsoleVariables.ini.backup_before_comment_cleanup_20260702_124250
```

## Odilbek project fix

`Odilbek` projectida ray tracing geometry memory pressure kamaytirish uchun quyidagilar qo'shildi:

- instanced static mesh RT culling;
- RT MinLOD=1;
- landscape grass RT'dan chiqarildi;
- Nanite proxy LODBias=1;
- WPO RT proxy uchun o'chirildi;
- on-demand geometry buffer streaming yoqildi;
- RT culling radius 20000 dan 12000 ga tushirildi.

Odilbek commit:

```text
a8c815a Reduce ray tracing geometry memory pressure
```
