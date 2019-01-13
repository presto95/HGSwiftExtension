import UIKit

public extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    convenience init(rgb: CGFloat) {
        self.init(red: rgb, green: rgb, blue: rgb)
    }
}
