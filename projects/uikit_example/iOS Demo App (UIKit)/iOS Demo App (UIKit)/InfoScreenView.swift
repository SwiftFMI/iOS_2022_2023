//
//  InfoScreenView.swift
//  iOS Demo App (UIKit)
//
//  Created by Emil Atanasov on 01/05/23.
//

import SwiftUI

struct InfoScreenView: View {
    @State var title = "Hello SwiftUI!"
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            Text(title)
            Text("Counter is \(model.counter)")
            Button("Update") {
                title = "State works fine!"
            }
            Button("Increase") {
                model.increase(value: 1)
            }
        }
    }
}

struct InfoScreenView_Previews: PreviewProvider {
    static var previews: some View {
        InfoScreenView()
    }
}
