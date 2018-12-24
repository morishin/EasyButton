import UIKit

extension UIButton {
    public static func button(title: String? = nil, titleColor: UIColor, backgroundColor: UIColor, highlightedColor: UIColor? = nil, cornerRadius: CGFloat = 0) -> UIButton {
        let button = UIButton(type: .custom)
        button.setup(title: title, titleColor: titleColor, backgroundColor: backgroundColor, highlightedColor: highlightedColor, cornerRadius: cornerRadius)
        return button
    }

    public func setup(title: String? = nil, titleColor: UIColor, backgroundColor: UIColor, highlightedColor: UIColor? = nil, cornerRadius: CGFloat = 0) {
        guard buttonType == .custom else { return assertionFailure("Please set buttonType .custom") }
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        setBackgroundColor(color: backgroundColor, highlightedColor: highlightedColor)
        setCornerRadius(radius: cornerRadius)
    }

    public func setBackgroundColor(color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return assertionFailure("Failed to get current context") }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let image = context.makeImage().map { UIImage(cgImage: $0) }
        setBackgroundImage(image, for: state)
    }

    public func setCornerRadius(radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
    }

    public func setBackgroundColor(color: UIColor, highlightedColor: UIColor? = nil) {
        setBackgroundColor(color: color, for: .normal)
        if let highlightedcolor = highlightedColor {
            setBackgroundColor(color: highlightedcolor, for: .highlighted)
        } else {
            let highlightedColor = color.isLight ? color.darken(delta: 0.2) : color.lighten(delta: 0.2)
            setBackgroundColor(color: highlightedColor, for: .highlighted)
        }
    }
}
