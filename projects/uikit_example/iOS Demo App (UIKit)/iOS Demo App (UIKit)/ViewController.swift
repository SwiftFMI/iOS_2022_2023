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
    var model: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        button.isHidden = true
        model = Model()
    }

    @IBAction func buttonPressedHandler(_ sender: Any) {
        guard let model else {
            print("Model is not initialized.")
            return
        }
        print("Open a SwiftUI Controller")
        let swiftUIViewController = UIHostingController(rootView: InfoScreenView()
            .environmentObject(model))
        self.navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
    
}

class Model: ObservableObject {
    @Published var counter = 1
    
    func increase(value: Int) {
        counter += value
    }
}
