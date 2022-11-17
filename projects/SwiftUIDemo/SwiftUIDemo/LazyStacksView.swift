//
//  LazyStacksView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct LazyStacksView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: .center, spacing: 10) {
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
                }
            }
        }
    }
}

struct LazyStacksView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacksView()
    }
}
