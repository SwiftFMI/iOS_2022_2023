//
//  GraphicsView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct GraphicsView: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
//        VStack {
//            Rectangle()
//                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 1, dash: [], dashPhase: 1))
//                .frame(width: 100, height: 100)
////                .foregroundColor(Color.green )
//            MyShape()
//        }
    }
}

struct GraphicsView_Previews: PreviewProvider {
    static var previews: some View {
        GraphicsView()
    }
}
