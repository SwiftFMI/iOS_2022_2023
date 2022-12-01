//
//  DayView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import SwiftUI

struct DayView: View {
    var body: some View {
        Text("На този екран изобразяваме задачите за избрана дата")
            .multilineTextAlignment(.center)
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
    }
}
