//
//  MyShape.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path(rect)
        path.addLines([
            .init(x: 2, y: 1),
            .init(x: 1, y: 0),
            .init(x: 0, y: 1),
            .init(x: 1, y: 2),
            .init(x: 3, y: 0),
            .init(x: 4, y: 1),
            .init(x: 3, y: 2),
            .init(x: 2, y: 1)
        ])
//        path.sizeThatFits(rect)
       return path
    }
}
