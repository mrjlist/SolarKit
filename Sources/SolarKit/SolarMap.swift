//
//  SolarMap.swift
//  Finloom
//
//  Карта SF Symbols → иконки пака Solar (стиль bold) из Solar.xcassets.
//  Рендер идёт через маппинг на этапе отображения: сохранённые в данных
//  SF-имена (Account.icon/Category.icon) резолвятся в Solar без миграции.
//  Если имя не в карте — фолбэк на системный SF Symbol.
//

import SwiftUI
import UIKit

public enum SolarMap {
    /// SF Symbol name → имя ассета Solar.
    public static let table: [String: String] = [
        "airplane": "plane-bold",
        "airplane.departure": "plane-2-bold",
        "airpodspro": "airbuds-case-bold",
        "applewatch": "watch-square-bold",
        "arrow.down.left": "arrow-left-down-bold",
        "arrow.left.arrow.right": "transfer-horizontal-bold",
        "arrow.left.arrow.right.circle.fill": "round-transfer-horizontal-bold",
        "arrow.triangle.2.circlepath": "refresh-bold",
        "arrow.up.right": "arrow-right-up-bold",
        "backpack.fill": "backpack-bold",
        "bandage.fill": "medical-kit-bold",
        "banknote.fill": "banknote-bold",
        "basket.fill": "cart-large-2-bold",
        "bathtub.fill": "bath-bold",
        "battery.100percent.bolt": "battery-charge-bold",
        "beach.umbrella.fill": "umbrella-bold",
        "bed.double.circle.fill": "bed-bold",
        "bed.double.fill": "bed-bold",
        "bell.fill": "bell-bold",
        "bicycle": "bicycling-bold",
        "birthday.cake.fill": "gift-bold",
        "bitcoinsign.circle.fill": "dollar-bold",
        "bolt.car.fill": "electric-refueling-bold",
        "bolt.circle.fill": "bolt-circle-bold",
        "bolt.fill": "bolt-bold",
        "book.closed.fill": "book-bold",
        "book.fill": "book-2-bold",
        "bookmark.fill": "bookmark-bold",
        "brain.head.profile": "brain-bold",
        "briefcase.fill": "case-bold",
        "building.columns": "safe-2-bold",
        "building.columns.fill": "safe-2-bold",
        "bus.fill": "bus-bold",
        "calendar": "calendar-bold",
        "camera.aperture": "camera-bold",
        "camera.fill": "camera-bold",
        "car.fill": "wheel-bold",
        "carrot.fill": "leaf-bold",
        "cart.fill": "cart-3-bold",
        "cat.fill": "cat-bold",
        "character.book.closed.fill": "book-bold",
        "chart.bar.doc.horizontal.fill": "presentation-graph-bold",
        "chart.bar.fill": "chart-bold",
        "chart.line.downtrend.xyaxis": "graph-down-bold",
        "chart.line.uptrend.xyaxis": "graph-up-bold",
        "chart.pie": "pie-chart-bold",
        "chart.pie.fill": "pie-chart-2-bold",
        "checkmark.circle.fill": "check-circle-bold",
        "chevron.down": "alt-arrow-down-bold",
        "clock": "clock-circle-bold",
        "clock.fill": "clock-circle-bold",
        "comb.fill": "scissors-bold",
        "computermouse.fill": "mouse-bold",
        "cpu.fill": "cpu-bold",
        "creditcard": "card-bold",
        "creditcard.fill": "card-bold",
        "creditcard.trianglebadge.exclamationmark": "card-2-bold",
        "cross.case.fill": "medical-kit-bold",
        "cross.fill": "health-bold",
        "crown.fill": "crown-bold",
        "cup.and.heat.waves.fill": "cup-hot-bold",
        "cup.and.saucer.fill": "cup-bold",
        "desktopcomputer": "monitor-bold",
        "dice.fill": "gamepad-bold",
        "display": "display-bold",
        "doc.text.fill": "document-text-bold",
        "dog.fill": "paw-bold",
        "dollarsign.circle.fill": "dollar-bold",
        "drop.fill": "waterdrop-bold",
        "dumbbell.fill": "dumbbell-bold",
        "ellipsis.circle": "menu-dots-circle-bold",
        "envelope.fill": "letter-bold",
        "eurosign.circle.fill": "euro-bold",
        "exclamationmark.circle": "danger-circle-bold",
        "exclamationmark.circle.fill": "danger-circle-bold",
        "eyeglasses": "glasses-bold",
        "ferry.fill": "map-bold",
        "figure.2.and.child.holdinghands": "users-group-rounded-bold",
        "figure.child": "user-rounded-bold",
        "figure.run": "running-bold",
        "figure.walk": "walking-bold",
        "figure.yoga": "meditation-bold",
        "film.fill": "clapperboard-bold",
        "fish.fill": "chef-hat-bold",
        "flag.fill": "flag-bold",
        "flame.fill": "fire-bold",
        "folder.fill": "folder-bold",
        "fork.knife": "chef-hat-bold",
        "frying.pan.fill": "chef-hat-bold",
        "fuelpump.fill": "gas-station-bold",
        "gamecontroller.circle.fill": "gamepad-bold",
        "gamecontroller.fill": "gamepad-bold",
        "gauge.medium": "speedometer-middle-bold",
        "gearshape": "settings-bold",
        "gift.fill": "gift-bold",
        "giftcard.fill": "gift-bold",
        "globe": "globe-bold",
        "graduationcap.fill": "square-academic-cap-bold",
        "guitars.fill": "music-note-bold",
        "hammer.fill": "sledgehammer-bold",
        "handbag.fill": "bag-bold",
        "hands.and.sparkles.fill": "hand-stars-bold",
        "hat.widebrim.fill": "crown-bold",
        "headphones": "headphones-round-bold",
        "heart.circle.fill": "heart-bold",
        "heart.fill": "heart-bold",
        "house.and.flag.fill": "home-2-bold",
        "house.fill": "home-bold",
        "info.circle.fill": "info-circle-bold",
        "ipad": "tablet-bold",
        "iphone": "smartphone-bold",
        "key.fill": "key-bold",
        "keyboard.fill": "keyboard-bold",
        "laptopcomputer": "laptop-bold",
        "leaf.arrow.circlepath": "leaf-bold",
        "leaf.fill": "leaf-bold",
        "lightbulb.fill": "lightbulb-bold",
        "lightbulb.led.fill": "lightbulb-bolt-bold",
        "lightbulb.max.fill": "lightbulb-bold",
        "line.3.horizontal.decrease.circle": "filter-bold",
        "list.bullet": "list-bold",
        "list.bullet.rectangle": "notebook-bold",
        "lock.square.stack.fill": "safe-square-bold",
        "lungs.fill": "health-bold",
        "map.fill": "map-bold",
        "mug.fill": "cup-hot-bold",
        "music.note": "music-note-bold",
        "paintbrush.pointed.fill": "paint-brush-bold",
        "parkingsign.circle.fill": "map-point-bold",
        "party.popper.fill": "confetti-bold",
        "pawprint.fill": "paw-bold",
        "pencil": "pen-bold",
        "pencil.and.ruler.fill": "ruler-pen-bold",
        "percent": "sale-bold",
        "person.2.fill": "users-group-rounded-bold",
        "pills.fill": "pills-bold",
        "popcorn.fill": "cup-bold",
        "printer.fill": "printer-bold",
        "questionmark.circle.fill": "question-circle-bold",
        "refrigerator.fill": "fridge-bold",
        "repeat": "repeat-bold",
        "road.lanes": "map-bold",
        "scooter": "scooter-bold",
        "shield.fill": "shield-bold",
        "shippingbox.fill": "box-bold",
        "shoe.fill": "bag-bold",
        "signature": "pen-new-square-bold",
        "simcard.fill": "sim-card-bold",
        "soccerball": "football-bold",
        "sofa.fill": "armchair-bold",
        "sparkles": "stars-bold",
        "sparkles.rectangle.stack.fill": "gallery-bold",
        "square.grid.2x2": "widget-2-bold",
        "star.fill": "star-bold",
        "steeringwheel": "wheel-bold",
        "stethoscope": "stethoscope-bold",
        "stroller.fill": "user-rounded-bold",
        "studentdesk": "square-academic-cap-bold",
        "sunglasses.fill": "glasses-bold",
        "syringe.fill": "syringe-bold",
        "tag": "tag-bold",
        "tag.fill": "tag-bold",
        "takeoutbag.and.cup.and.straw.fill": "cup-hot-bold",
        "teddybear.fill": "user-rounded-bold",
        "tent.fill": "map-bold",
        "text.book.closed.fill": "book-bold",
        "theatermasks.fill": "masks-bold",
        "thermometer.medium": "thermometer-bold",
        "ticket.fill": "ticket-bold",
        "tooth.fill": "health-bold",
        "tram.fill": "tram-bold",
        "trash": "trash-bin-minimalistic-2-bold",
        "trash.fill": "trash-bin-minimalistic-2-bold",
        "truck.box.fill": "box-bold",
        "tshirt.fill": "t-shirt-bold",
        "tv.fill": "tv-bold",
        "umbrella.fill": "umbrella-bold",
        "wallet.bifold.fill": "wallet-bold",
        "washer.circle.fill": "washing-machine-bold",
        "washer.fill": "washing-machine-bold",
        "waterbottle.fill": "bottle-bold",
        "waveform.path.ecg": "heart-pulse-bold",
        "wifi": "wi-fi-router-bold",
        "wineglass.fill": "wineglass-bold",
        "wrench.and.screwdriver.fill": "toolbox-bold",
    ]

    /// Имя ассета Solar для SF-имени, либо nil если маппинга нет.
    public static func solar(for sf: String) -> String? { table[sf] }
}

/// Универсальная иконка приложения. Для имён из карты рисует ассет Solar
/// (resizable, template — тинтуется через .foregroundStyle), иначе — SF Symbol.
/// `size` — сторона глифа в pt; для SF-фолбэка задаёт .font(size,weight).
public struct AppIcon: View {
    let name: String
    var size: CGFloat
    var weight: Font.Weight

    public init(name: String, size: CGFloat = 17, weight: Font.Weight = .regular) {
        self.name = name
        self.size = size
        self.weight = weight
    }

    public var body: some View {
        if let solar = SolarMap.solar(for: name) {
            Image(solar, bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
        } else {
            Image(systemName: name)
                .font(.system(size: size, weight: weight))
        }
    }
}

public extension Label where Title == Text, Icon == AppIcon {
    /// Label с иконкой из карты Solar (или SF-фолбэк), размер под подпись.
    init(_ title: String, appIcon name: String, size: CGFloat = 15) {
        self.init { Text(title) } icon: { AppIcon(name: name, size: size) }
    }
}

public extension UIImage {
    /// UIImage для UIKit-мест (таб-бар): Solar-ассет как template, иначе SF Symbol.
    static func appIcon(_ name: String) -> UIImage? {
        if let solar = SolarMap.solar(for: name) {
            return UIImage(named: solar, in: .module, with: nil)?.withRenderingMode(.alwaysTemplate)
        }
        return UIImage(systemName: name)
    }
}
