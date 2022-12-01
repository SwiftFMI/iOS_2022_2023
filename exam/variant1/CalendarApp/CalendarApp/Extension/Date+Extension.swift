//
//  Date+Extension.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import Foundation

extension Date {
    static var yesterday: Date { Date().dayBefore }
    static var tomorrow:  Date { Date().dayAfter }
    
    var dayBefore: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: self)!
    }
    var dayAfter: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: self)!
    }
    var noon: Date {
        Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var startOfDay: Date {
        Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: self)!
    }
    var month: Int {
        Calendar.current.component(.month,  from: self)
    }
    var dateInMonth: Int {
        Calendar.current.component(.day,  from: self)
    }
    var isLastDayOfMonth: Bool {
        dayAfter.month != month
    }
}

extension Int {
    var prefixAsDate: String {
        if self < 10 && self >= 0 {
            return "0\(self)"
        }
        if self < 0 {
            return ""
        }
        return "\(self)"
    }
}
