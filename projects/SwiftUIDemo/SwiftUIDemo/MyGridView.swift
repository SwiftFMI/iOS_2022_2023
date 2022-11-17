//
//  MyGridView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct MyGridView: View {
    var body: some View {
        Grid {
            GridRow {
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    .gridColumnAlignment(.leading)
                Rectangle()
                    .frame(width: 50, height: 20)
                    .foregroundColor(.pink)
            }
            GridRow {
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    .gridCellAnchor(.trailing)
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.pink)
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.pink)
            }
            GridRow {
                Rectangle()
                    .frame(width: 50, height: 20)
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.pink)
            }
        }
//        VStack {
//            HStack {
//                Rectangle()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.green)
//                Rectangle()
//                    .frame(width: 50, height: 20)
//                    .foregroundColor(.pink)
//            }
//            HStack {
//                Rectangle()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.green)
//                Rectangle()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.pink)
//            }
//        }
    }
}

struct MyGridView_Previews: PreviewProvider {
    static var previews: some View {
        MyGridView()
    }
}
