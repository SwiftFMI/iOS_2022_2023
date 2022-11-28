//
//  MatchGeometryView.swift
//  GradientBuilder
//
//  Created by Emil Atanasov on 11/28/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct MatchGeometryView: View {
    @State var show = false
    @Namespace var namespace

    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 10)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                            .frame(width: 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "title", in: namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .matchedGeometryEffect(id: "play", in: namespace)
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .matchedGeometryEffect(id: "forward", in: namespace)
                            .font(.title)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
            } else {
                PlayView(namespace: namespace)
            }
        }
        .foregroundColor(.white)
        .onTapGesture {
            withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

struct MatchGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        MatchGeometryView()
    }
}
