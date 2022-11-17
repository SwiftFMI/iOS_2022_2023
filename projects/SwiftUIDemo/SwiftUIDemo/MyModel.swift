//
//  MyModel.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/10/22.
//

import Foundation

// ViewModel
class MyModel: ObservableObject {
    @Published private(set) var counter = 1
    @Published private(set) var title = "My Title"
    
    func increaseCounter(by: Int) {
        counter += by
    }
    
    func setTitle(newTitle: String) {
        title = newTitle
    }
}

class MyNewModel: ObservableObject {
    @Published var counter = 10
    
    func increaseCounterWithOne() {
        counter += 1
        print("Increase ...")
        print("Counter = \(counter)")
    }
}
