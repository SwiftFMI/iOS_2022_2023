//
//  AnimationView.swift
//  GradientBuilder
//
//  Created by Emil Atanasov on 11/28/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct AnimationView: View {
    @State var isVisible = true
    
    var body: some View {
//        if isVisible {
//            Circle()
//                .foregroundColor(isVisible ? .blue : .red)
//                .onTapGesture {
//                    withAnimation {
//                        isVisible.toggle()
//                    }
//                }
//        } else {
            Rectangle()
                .foregroundColor(isVisible ? .blue : .red)
                .onTapGesture {
                    withAnimation {
                        isVisible.toggle()
                    }
                }
//        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
