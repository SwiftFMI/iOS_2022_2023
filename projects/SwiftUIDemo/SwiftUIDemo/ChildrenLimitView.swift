//
//  ChildrenLimitView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct ChildrenLimitView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.green)
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
        }
    }
}

struct ChildrenLimitView_Previews: PreviewProvider {
    static var previews: some View {
        ChildrenLimitView()
    }
}
