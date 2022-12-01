//
//  TaskView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import SwiftUI

struct TaskView: View {
    @State var isCompleted: Bool = false
    var body: some View {
        VStack {
            Text("Изглед на задача.")
            Toggle(isOn: $isCompleted) {
                Text("Заглавие на задачата")
                    .bold()
            }
        }
        .padding()
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
