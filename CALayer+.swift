import UIKit

extension CALayer {
    func applySketchShadow(color: UIColor, alpha: Float, x: CGFloat, y: CGFloat, blur: CGFloat, spread: CGFloat) {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
    
    func applyGradient(colors: [Any], locations: [NSNumber], startPoint: CGPoint = .init(x: 0.5, y: 0), endPoint: CGPoint = .init(x: 0.5, y: 1)) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.colors = colors
        gradient.locations = locations
        mask = gradient
    }
}
