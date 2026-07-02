# Muslimatun - Odilbek UE ArchViz ishlar arxivi

Bu repo Unreal Engine loyihasining o'zi emas. Katta binary content Git'ga qo'yilmaydi.
Bu yerda audit, tuzatish ishlari, sessiya xotiralari va Codex bilan saqlanadigan chat
eslatmalari yuritiladi.

## Tarkib

- `memory/` - loyiha tuzilishi, level'lar, ArchVizExplorer framework'i, performance/texture
  auditlari va muhim tuzatishlar bo'yicha xotira fayllari.
- `AuditExport/` - Unreal Editor'dan eksport qilingan actor/light/material qiymatlari,
  texture/lightmap audit natijalari va summary reportlar.
- Codex chat exportlari - kerak bo'lganda alohida markdown fayllar sifatida qo'shib boriladi.

## 2026-07-02: Wood material tuzatildi

`/Game/Mavrid/Default_M/Base_Material` materialining Shading Model'i noto'g'ri
`MSM_TwoSidedFoliage` bo'lib turgani sababli `Wood_*`, `welo_*`, `Soil*` va ba'zi avtomobil
detal materiallari oq/xira ko'rinar edi. `MSM_DefaultLit`ga o'zgartirilib tuzatildi.
Batafsil: `memory/unreal_wood_material_shading_model_fix.md`.
