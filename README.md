# Effortless ViewController Instantiation in Swift

![InstantiableHelper](https://github.com/masadchattha/InstantiableHelper/assets/38839059/a2fbd49a-258f-4512-bf53-c61d49a1b69e)

## Introduction
In the dynamic world of Swift programming, creating and navigating between ViewControllers is a fundamental aspect of iOS development using UIKit. Traditional methods involve explicitly defining each ViewController and its associated Storyboard, leading to redundant code and decreased maintainability. However, there's a more elegant solution - a protocol-driven approach that simplifies ViewController instantiation.

## The Protocol: Instantiable
Introducing a protocol, Instantiable, designed to streamline the process. With just one required property, any ViewController can become instantly accessible.

```swift
import UIKit

protocol Instantiable {
    static var storyboard: UIStoryboard { get }
}

// MARK: - Providing default implementation
extension Instantiable {

    static func instantiate() -> Self {
        return instantiateFromStoryboard()
    }

    private static func instantiateFromStoryboard<T>() -> T {
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
```

## Implementation
Let's illustrate the implementation with an example. Assume you have a ViewController named SecondVC Implement Instantiable protocol and defined required storyboard property and return storyboard of ViewController.
```swift
// MARK: - Instantiable
extension SecondVC: Instantiable {

    static var storyboard: UIStoryboard {
        UIStoryboard.main
    }
}
```

I've defined an extension for UIStoryboard to keep code straight and easy to read.
```swift
import UIKit

extension UIStoryboard {
    static let main = UIStoryboard(name: "Main", bundle: nil)
}
```

## Usage
With this approach, instantiating any ViewController becomes a breeze. For instance:
```swift
// MARK: - Actions
extension ViewController {

    @IBAction func onPresent(_ sender: UIButton) {
        let vc = SecondVC.instantiate()
        vc.valuePassed = "VALUE PASSED"
        present(vc, animated: true)
    }
}
```

## Conclusion
By embracing the Instantiable protocol and the streamlined instantiation method, your codebase gains flexibility, readability, and a significant reduction in boilerplate code. This approach not only enhances the development experience but also ensures a more maintainable and scalable iOS project. Embrace the power of Swift protocols to revolutionize your ViewController instantiation process.

---

I hope this guide helps elevate your code structure. If you'd like to connect and further discuss iOS development, please feel free to visit my [LinkedIn profile](https://www.linkedin.com/in/masadchattha/).

