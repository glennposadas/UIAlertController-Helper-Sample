import UIKit

extension UIViewController {
    
    /// The completion callback for the ```alert```.
    typealias AlertCallBack = ((_ didTapPrimary: Bool) -> Void)
    
    /**
     Presents an alertController with completion with primary and secondary button having default styles.
     */
    func alert(title: String,
               message: String? = nil,
               primaryButton: String,
               secondaryButtonTitle: String? = nil,
               tintColor: UIColor = .black,
               withBlock completion: AlertCallBack?) {
        alert(title: title,
              message: message ?? "",
              primaryButtonTitle: primaryButton,
              primaryButtonStyle: .default,
              secondaryButtonTitle: secondaryButtonTitle,
              secondaryButtonStyle: .default,
              tintColor: .black,
              withBlock: completion)
    }
    /**
     Presents an alertController with completion.
     
     Important Note:
     
     The `cancel` type, regardless of the arrangement of the action (ie hierarchy of how you add them),
     the button with this type will ALWAYS be placed in the leading.
     
     Meanwhile, the `destructive` amd tje `default` types will ALWAYS follow how they are added (ie. positions or hierarchies.)
     
     Guidelines:
     
     https://developer.apple.com/design/human-interface-guidelines/components/presentation/alerts/
     
     - parameter title: The title of the alert.
     - parameter message: The body of the alert, nullable, since we can just sometimes use the title parameter.
     - parameter primaryButtonTitle: the title of trailing button (e.g. "OK")
     - parameter primaryButtonStyle: the actionStyle of the primary button
     - parameter secondaryButtonTitle: The title of the secondary button (e.g. "Don't Allow", "Cancel")
     - parameter secondaryButtonStyle: the actionStyle of the seconday button
     - parameter tintColor: the tint of the controller.
     - parameter completion: The `AlertCallBack`, returns Bool. True when the user taps on the OK button, otherwise false.
     */
    func alert(title: String,
               message: String,
               primaryButtonTitle: String,
               primaryButtonStyle: UIAlertAction.Style,
               secondaryButtonTitle: String?,
               secondaryButtonStyle: UIAlertAction.Style?,
               tintColor: UIColor,
               withBlock completion: AlertCallBack?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Primary Action
        
        alertController.addAction(.init(title: primaryButtonTitle,
                                        style: primaryButtonStyle,
                                        handler: { _ in
            completion?(true)
        }))
        
        // Secondary Action
        
        if let secondaryButtonTitle = secondaryButtonTitle {
            alertController.addAction(.init(title: secondaryButtonTitle,
                                            style: secondaryButtonStyle ?? .default,
                                            handler: { _ in
                completion?(false)
            }))
        }
        
        alertController.view.tintColor = tintColor
        
        present(alertController, animated: true, completion: nil)
    }
}
