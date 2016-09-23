import UIKit

extension UIApplication {
    public static var auh_topmostViewController: UIViewController {
        var topmostViewController = UIApplication.shared.delegate!.window!!.rootViewController!
        while let presentedViewController = topmostViewController.presentedViewController {
            topmostViewController = presentedViewController
        }
        return topmostViewController
    }
}

extension UIViewController {
    public func auh_dismissViewController() {
        dismiss(animated: true)
    }
}
