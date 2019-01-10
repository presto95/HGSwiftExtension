import UIKit

extension UIView {
    static func instantiate(fromXib name: String) -> UIView? {
        return UINib(nibName: name, bundle: nil).instantiate(withOwner: nil, options: nil).first as? UIView
    }
}
