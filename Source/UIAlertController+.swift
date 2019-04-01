//
//  Created by Presto on 01/04/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

public extension UIAlertController {
  
  /// Creates an alert controller object having `title`, `message` and preferred `style`.
  ///
  /// - Parameters:
  ///   - title:    The title that will appear in the alert controller.
  ///   - message:  The message that will appear in the alert controller.
  ///   - style:    The style of the alert controller. The default value is `UIAlertController.Style.alert`.
  ///
  /// - Returns: The created alert controller object.
  ///
  /// The code for creating a simple alert controller with one text field, confirm button and cancel button, and presenting to `viewController`.
  /// ````
  /// UIAlertController
  ///   .alert(title: "Title", message: "Message"
  ///   .textField()
  ///   .action(title: "Confirm")
  ///   .action(title: "Cancel", style: .cancel)
  ///   .present(to: viewController)
  class func alert(title: String?, message: String?, style: UIAlertController.Style = .alert) -> UIAlertController {
    return .init(title: title, message: message, preferredStyle: style)
  }
  
  /// Adds a text field into the alert controller with configuration `handler`.
  ///
  /// - Parameters:
  ///   - handler: A block for configuring the text field prior to displaying the alert. The default value is `nil`.
  ///
  /// - Returns: The alert controller with the text field added.
  func textField(configurationHandler handler: ((UITextField) -> Void)? = nil) -> UIAlertController {
    addTextField(configurationHandler: handler)
    return self
  }
  
  /// Adds an alert action object into the alert controller with `title`, preferred `style`
  /// and completion `handler` when the alert controller has no text field.
  ///
  /// - Parameters:
  ///   - title:    The title that will appear in the alert controller.
  ///   - style:    The style of the alert action. The default value is `UIAlertAction.Style.default`.
  ///   - handler:  A block to execute when the user selects the action. The default value is `nil`.
  ///
  /// - Returns: The alert controller with the alert action added.
  ///
  /// - Note: Prefer to use `action(title:style:completionWithTextFields)` if a text field is added and want to do something with that.
  func action(title: String?, style: UIAlertAction.Style = .default, completionWithoutTextFields handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
    let action = UIAlertAction(title: title, style: style, handler: handler)
    addAction(action)
    return self
  }
  
  /// Adds an alert action object into the alert controller with `title`, preferred `style`,
  /// and completion `handler` when the alert controller has at least one text field.
  ///
  /// - Parameters:
  ///   - title:    The title that will appear in the alert controller.
  ///   - style:    The style of the alert action.
  ///               The default value is `UIAlertAction.Style.default`.
  ///   - handler:  A block to execute when the user selects the action. The default value is `nil`.
  ///
  /// - Returns: The alert controller with the alert action added.
  ///
  /// - Note: If there is no text field in the alert controller, it can be able to cause the runtine error.
  ///         Prefer to use `action(title:style:completionWithoutTextFields)` if the alert controller has no text field.
  func action(title: String?, style: UIAlertAction.Style = .default, completionWithTextFields handler: ((UIAlertAction, [UITextField]) -> Void)? = nil) -> UIAlertController {
    guard let textFields = textFields else { fatalError("There is no text fields in the alert controller. To avoid this error, make sure the alert controller has at least one text field.") }
    let action = UIAlertAction(title: title, style: style) { action in handler?(action, textFields) }
    addAction(action)
    return self
  }
  
  /// Presents the final alert controller to `viewController` modally.
  ///
  /// - Parameters:
  ///   - viewController: The view controller object that the alert controller presented.
  ///   - flag:           The boolean value indicating whether the alert controller is presented with some animation.
  ///   - completion:     A block to execute after the presentation finishes.
  func present(to viewController: UIViewController, animated flag: Bool = true, completion: (() -> Void)? = nil) {
    viewController.present(self, animated: flag, completion: completion)
  }
}
