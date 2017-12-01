import UIKit

extension UIApplication {
    public static var auh_topmostViewController: UIViewController {
        var topmostViewController = UIApplication.shared.delegate!.window!!.rootViewController!
        while let presentedViewController = topmostViewController.presentedViewController, !presentedViewController.isBeingDismissed {
            topmostViewController = presentedViewController
        }
        return topmostViewController
    }
}

extension UIViewController {
    @objc public func auh_dismissViewController() {
        dismiss(animated: true)
    }
}
