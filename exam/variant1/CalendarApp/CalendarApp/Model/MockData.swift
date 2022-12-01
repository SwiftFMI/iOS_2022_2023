//
//  MockData.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/27/22.
//

import Foundation

extension CalendarMonth {
    /// Модел, на месец ноември
    static var mockMonth: CalendarMonth {
        let nov1 = Calendar.current.date(from: DateComponents(timeZone: TimeZone(identifier: "GMT"), year: 2022, month: 11, day: 1, hour: 0, minute: 0, second: 0, nanosecond: 0))!
        let currentMonth = nov1.month
        func isMonday(weekday: Int) -> Bool {
            return weekday == 1
        }
        
        func isWeekend(weekday: Int) -> Bool {
            return weekday == 0 || weekday == 6
        }
        
        func weekday(date: Date) -> Int {
           return Calendar.current.component(.weekday, from: date) - 1
        }
        
        // намираме датата, която е в понеделник на първата седмица
        var startDate = nov1
        while !isMonday(weekday: weekday(date: startDate)) {
            startDate = startDate.dayBefore
        }

        var days = 0
        var currentWeek = CalendarWeek(days: [])
        var november = CalendarMonth(weeks: [], name: "Ноември")
        // повтаряме всичко докато не стигнем до последната седмица с дни от текущия месец
        while !(days == 0 && startDate.month > currentMonth) {
            let type = isWeekend(weekday: weekday(date: startDate)) ? WeekDay.weekend : WeekDay.workday
            let day = CalendarDay(date: startDate, type: type)
            currentWeek.days.append(day)
            
            days += 1
            startDate = startDate.dayAfter
            // стигнали сме края на седмицата, минаваме на следващата
            if days == 7 {
                days = 0
                november.weeks.append(currentWeek)
                currentWeek = CalendarWeek(days: [])
            }
        }
        
        return november
    }
}

extension CalendarModel {
    /// Стартова инстанция, която съдържа всички необходими данни
    static var mockInstance: CalendarModel {
        let model = CalendarModel(months: [CalendarMonth.mockMonth])
        let nov1 = Calendar.current.date(from: DateComponents(timeZone: TimeZone(identifier: "GMT"), year: 2022, month: 11, day: 1, hour: 0, minute: 0, second: 0, nanosecond: 0))!
        model.add(task: TaskItem(title: "Да прочета книгата с разкази от Иван", time: "20:00", isComplete: false), to: CalendarDay(date: nov1))
        
        let nov28 = Calendar.current.date(from: DateComponents(timeZone: TimeZone(identifier: "GMT"), year: 2022, month: 11, day: 28, hour: 0, minute: 0, second: 0, nanosecond: 0))!
        model.add(task: TaskItem(title: "Лекция по SwiftUI", time: "18:00", isComplete: false), to: CalendarDay(date: nov28))
        
        let nov30 = Calendar.current.date(from: DateComponents(timeZone: TimeZone(identifier: "GMT"), year: 2022, month: 11, day: 30, hour: 0, minute: 0, second: 0, nanosecond: 0))!
        model.add(task: TaskItem(title: "Учи за контролно по SwiftUI",time: "08:00", isComplete: false), to: CalendarDay(date: nov30))
        
        let nov25 = Calendar.current.date(from: DateComponents(timeZone: TimeZone(identifier: "GMT"), year: 2022, month: 11, day: 25, hour: 0, minute: 0, second: 0, nanosecond: 0))!
        model.add(task: TaskItem(title: "Да си купя iPad", time: "12:00", isComplete: false), to: CalendarDay(date: nov25))
        model.add(task: TaskItem(title: "Да си се видя с приятели", time: "10:00", isComplete: false), to: CalendarDay(date: nov25))
        
        return model
    }
}
