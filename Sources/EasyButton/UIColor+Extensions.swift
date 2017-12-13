import UIKit

extension UIColor {
    private struct HSBA {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        var uiColor: UIColor {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
        }
    }

    func darken(delta: CGFloat) -> UIColor {
        var color = HSBA()
        guard getHue(&color.hue, saturation: &color.saturation, brightness: &color.brightness, alpha: &color.alpha) else {
            assertionFailure()
            return self
        }
        color.brightness = min(color.brightness - delta, 1.0)
        return color.uiColor
    }

    func lighten(delta: CGFloat) -> UIColor {
        return darken(delta: -delta)
    }

    var isLight: Bool {
        var color = HSBA()
        guard getHue(&color.hue, saturation: &color.saturation, brightness: &color.brightness, alpha: &color.alpha) else {
            assertionFailure()
            return false
        }
        return color.brightness >= 0.5
    }
}
