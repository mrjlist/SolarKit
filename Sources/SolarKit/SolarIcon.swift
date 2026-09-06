//
//  SolarIcon.swift
//  SolarKit
//
//  Доступ к паку иконок Solar (в ресурсах пакета). Иконки шаблонные (template) —
//  тинтуются через .foregroundStyle как SF Symbols.
//

import SwiftUI

/// Стили пака Solar. Полное имя ассета = "<base>-<style>", напр. "home-bold".
public enum SolarStyle: String, CaseIterable, Sendable {
    case linear
    case bold
    case outline
    case broken
    case lineDuotone = "line-duotone"
    case boldDuotone = "bold-duotone"
}

public extension Image {
    /// Иконка Solar по полному имени ассета, напр. `Image(solar: "home-bold")`.
    init(solar name: String) {
        self.init(name, bundle: .module)
    }

    /// Иконка Solar по базовому имени и стилю, напр. `Image(solar: "home", .bold)`.
    init(solar base: String, _ style: SolarStyle) {
        self.init("\(base)-\(style.rawValue)", bundle: .module)
    }
}
