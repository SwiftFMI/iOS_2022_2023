//
//  DetailsView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 10/07/22.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.presentationMode) var mode
    @State var counter: Int
    init() {
        print("Init details view")
//        self.mode = mode
        self._counter = State(initialValue: 0)
    }
    var body: some View {
        VStack {
            Text("State counter = \(counter)")
            Button("+1") {
                counter += 1
            }
            Button("Back") {
                print("pop view")
                mode.wrappedValue.dismiss()

            }
        }
        .navigationTitle("Details view")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
