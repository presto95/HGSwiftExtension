import UIKit

public extension UIViewController {
    static func instantiate(fromStoryboard storyboard: String, identifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier)
        return controller
    }
    
    func present(to viewController: UIViewController, transitionStyle style: UIModalTransitionStyle = .coverVertical, animated: Bool = true, completion: (() -> Void)? = nil) {
        modalTransitionStyle = style
        viewController.present(self, animated: animated, completion: completion)
    }
}
