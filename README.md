# SolarKit

Весь пак иконок **Solar** (~7759 иконок, все стили) как **Swift Package**.
Ассет-каталог лежит в ресурсах пакета, поэтому Xcode не индексирует ~15k файлов в
навигаторе (в отличие от добавления `.xcassets` папкой) — он обрабатывает пакет как
единое целое на сборке.

## Подключение
1. Xcode → **File → Add Package Dependencies…**
2. В поле URL (справа сверху) вставь:
   ```
   https://github.com/mrjlist/SolarKit
   ```
3. Dependency Rule → **Up to Next Major** от `1.0.0` (или Exact 1.0.0) → **Add Package**.
4. Добавь продукт **SolarKit** к нужному таргету.
5. В файлах с иконками — `import SolarKit`.

> Не добавляй `Solar.xcassets` папкой в проект — Xcode виснет на индексации ~15k файлов.

## Использование
```swift
import SolarKit

// Иконка Solar по полному имени ассета:
Image(solar: "home-bold")

// По базе + стилю (linear/bold/outline/broken/line-duotone/bold-duotone):
Image(solar: "home", .bold)

// Универсальная иконка: Solar по карте SF→Solar, иначе SF Symbol.
// Размер задаётся параметром (ассеты не масштабируются .font!).
AppIcon(name: "creditcard.fill", size: 22, weight: .semibold)
    .foregroundStyle(.orange)

// Label с иконкой:
Label("Удалить", appIcon: "trash", size: 16)

// UIKit (напр. таб-бар):
let img = UIImage.appIcon("gearshape")
```

## Заметки
- Иконки — шаблонные (template), красятся через `.foregroundStyle` / tint, как SF Symbols.
- `SolarMap.table` — карта SF Symbol → имя ассета Solar (стиль bold). `plus`, `chevron.*`
  намеренно НЕ в карте → рендерятся системными SF Symbols.
- Регенерация пака: Iconify JSON `unpkg.com/@iconify-json/solar/icons.json` → по каждой
  иконке `<svg viewBox="0 0 24 24">{body}</svg>` в `<name>.imageset` (template).
- Сборка каталога (actool) занимает заметное время из-за объёма — это разовая цена.

## Лицензия
Иконки Solar — MIT (Solar Icons).
