//
//  ViewController.swift
//  iOS Demo App (UIKit)
//
//  Created by Emil Atanasov on 10/06/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        button.isHidden = true
    }

    @IBAction func buttonPressedHandler(_ sender: Any) {
        print("Open a SwiftUI Controller")
        let swiftUIViewController = UIHostingController(rootView: InfoScreenView())
        self.navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
    
}

