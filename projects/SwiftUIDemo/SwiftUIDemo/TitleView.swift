//
//  TitleView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/14/22.
//

import SwiftUI

struct TitleView: View {
//    @Binding var title: String
    @EnvironmentObject var model: MyModel
    var body: some View {
        VStack {
            Text(model.title)
                .font(.title)
                .foregroundColor(.green)
            Button {
                model.setTitle(newTitle: model.title + "!")
            } label: {
                Text("Update")
            }

        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .environmentObject(MyModel())
    }
}
