//
//  HStackContainerView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 11/07/22.
//

import SwiftUI

struct HStackContainerView: View {
    var body: some View {
        HStack(alignment: .center) {
            Button {
                //nothing
            } label: {
                Text("Hello")
            }
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(.green)
            .cornerRadius(25)
            Spacer()
                .frame(width: 50)
            Button {
                //nothing
            } label: {
                Text("Hello")
            }
            .frame(maxWidth: .infinity)
            
            .padding()
            .background(.green)
            .cornerRadius(25)
            ZStack {
                Button {
                    
                } label: {
                    Text("Under")
                }
                
                Button {
                    
                } label: {
                    Text("Over")
                }
                .background(.green)
                Color.green
                Color.blue
            }
            
        }
        .padding(.horizontal, 50)
        .background(.pink)
        
    }
}

struct HStackContainerView_Previews: PreviewProvider {
    static var previews: some View {
        HStackContainerView()
    }
}
