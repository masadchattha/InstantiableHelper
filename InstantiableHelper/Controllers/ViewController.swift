//
//  ViewController.swift
//  InstantiableHelper
//
//  Created by Muhammad Asad Chattha on 12/12/2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - Actions
extension ViewController {

    @IBAction func onPresent(_ sender: UIButton) {
        let vc = SecondVC.instantiate()
        vc.valuePassed = "VALUE PASSED"
        present(vc, animated: true)
    }
}
