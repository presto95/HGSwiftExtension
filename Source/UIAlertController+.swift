import UIKit

public extension UIAlertController {
    static func alert(title: String?, message: String?, style: UIAlertController.Style = .alert) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        return alert
    }
    
    @discardableResult
    func action(title: String?, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let action = UIAlertAction(title: title, style: style) { handler?($0) }
        addAction(action)
        return self
    }
    
    func present(to viewController: UIViewController?, animated: Bool = true, handler: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            viewController?.present(self, animated: animated, completion: handler)
        }
    }
}
