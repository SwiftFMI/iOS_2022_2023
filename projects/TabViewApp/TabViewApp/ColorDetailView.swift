//
//  ColorDetailView.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct ColorDetailView: View {
    var color: Color
    var body: some View {
        Text("Text")
            .foregroundColor(color)
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView(color: .green)
    }
}
