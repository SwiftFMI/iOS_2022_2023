//
//  Model.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import Foundation

class CalendarModel: ObservableObject {
    var months: [CalendarMonth]
    
    init(months: [CalendarMonth]) {
        self.months = months
    }
    
    func add(task: TaskItem, to lookupDay: CalendarDay) {
        for monthIndex in months.indices {
            for weekIndex in months[monthIndex].weeks.indices {
                if let dayIndex = months[monthIndex].weeks[weekIndex].days.firstIndex(where: { currentDay in
                    currentDay == lookupDay
                }) {
                    months[monthIndex].weeks[weekIndex].days[dayIndex].tasks.append(task)
                }
            }
        }
    }
}


