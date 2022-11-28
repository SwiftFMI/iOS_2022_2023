//
//  CustomView.swift
//  GradientBuilder
//
//  Created by Emil Atanasov on 11/28/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CustomView: View {
    @StateObject var sharedRing = Ring()
    var body: some View {
        List {
            NavigationLink("Show Custom Component") {
                CustomChartView().environmentObject(sharedRing)
            }
        }
        .navigationTitle("Custom Component")
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomView()
        }
    }
}
