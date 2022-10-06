//
//  ContentView.swift
//  SwiftUI Demo App
//
//  Created by Emil Atanasov on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var x = "Hello"
    @State var counter = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(x)
            Button {
                print("button clicked!")
                counter += 1
            } label: {
                Text("Clicked \(counter) times!")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
