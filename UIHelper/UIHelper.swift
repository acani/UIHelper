import UIKit

extension UIApplication {
    public static var auh_topmostViewController: UIViewController {
        var topmostViewController = UIApplication.sharedApplication().delegate!.window!!.rootViewController!
        while let presentedViewController = topmostViewController.presentedViewController {
            topmostViewController = presentedViewController
        }
        return topmostViewController
    }
}
