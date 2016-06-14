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

extension UIViewController {
    public func auh_presentViewController(viewControllerToPresent: UIViewController) {
        presentViewController(viewControllerToPresent, animated: true, completion: nil)
    }

    public func auh_dismissViewController() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
