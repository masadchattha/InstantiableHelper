//
//  SecondVC.swift
//  InstantiableHelper
//
//  Created by Muhammad Asad Chattha on 12/12/2023.
//

import UIKit

class SecondVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = valuePassed ?? "UNKNOWN"
        }
    }

    // MARK: - Poperties
    var valuePassed: String?

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// MARK: - Instantiable
extension SecondVC: Instantiable {

    static var storyboard: UIStoryboard {
        UIStoryboard.main
    }
}
