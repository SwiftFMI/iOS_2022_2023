//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = "hello world"
    @State var date = Date.now
    var body: some View {
        VStack {
            ExtractedView()
            LabelList(title: "Demo view")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Text("A List Item")
                .foregroundColor(.cyan)
                .font(.title)
            
                .background(Color.blue)
                .padding()
            Label("Hello World!!", image: "globe")
        }
    }
}
