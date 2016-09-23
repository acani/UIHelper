# UIHelper

User interface (UI) helpers

Setup: [How to add a Git repository to your Xcode project][1]

Usage:

```swift
let topmostViewController = UIApplication.auh_topmostViewController
```

```swift
class MyCustomViewController: UIViewController {
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        let cancelBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(UIViewController.auh_dismissViewController))
        navigationItem.leftBarButtonItem = cancelBarButtonItem
    }

    // ... 
}
```

Released under the [Unlicense][2].


  [1]: https://github.com/acani/Libraries
  [2]: http://unlicense.org
