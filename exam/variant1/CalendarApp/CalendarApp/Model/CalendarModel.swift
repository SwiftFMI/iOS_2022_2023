//
//  CalendarModel.swift
//  CalendarApp
//
//  Файлът съдържа типовете изпозлвани в приложението.
//
//  Created by Emil Atanasov on 11/27/22.
//

import Foundation

/// Изброим тип, който определя различните видове дни в календара.
enum WeekDay {
    /// Работен ден
    case workday
    /// Почивен ден
    case weekend
    /// Празничен почивен ден
    case holiday
}

extension Date {
    var weekDay: WeekDay {
        // помощтни функции
        func isWeekend(weekday: Int) -> Bool {
            return weekday == 0 || weekday == 6
        }
        
        func weekday(date: Date) -> Int {
           return Calendar.current.component(.weekday, from: date) - 1
        }
        
        return isWeekend(weekday: weekday(date: self)) ? .weekend : .workday
    }
}

/// Структура, календарен ден. Представя един ден от календара и типът ден.
struct CalendarDay: Hashable {
    static func == (lhs: CalendarDay, rhs: CalendarDay) -> Bool {
        lhs.date == rhs.date
    }
    
    /// дата, която уникално определя един ден от календара
    var date: Date
    /// изчислимо пропърти, което на базата на датата и официалните празници определя,
    /// дали даден ден е почивен или не. Всички дни от уикенда (събота и неделя) са почивни.
    /// Всички официални празници са празнични почивни дни. Ако празник се падне в неделя
    /// тогава и понеделникът от следващата седмица е празнично почивен.
    var type: WeekDay
    /// Списък със задачи
    var tasks: [TaskItem] = []
}

extension CalendarDay {
    init(date: Date) {
        self.date = date
        self.type = date.weekDay
        self.tasks = []
    }
    /// към кой месец се отнася текущия ден
    var month: Int {
        return date.month
    }
}

/// Структура, която представя една седмица. Състои се от седем дни
struct CalendarWeek: Hashable {
    /// Всичкиките дни от седмицата. Не е нужно да са от един и същ месец
    var days: [CalendarDay]
    
    /// Само дните от текущия месец
}

/// Структура, която представя месец, като списък от седмици
struct CalendarMonth {
    /// Списък от седмиците, които обхващат целия месец. Това представяне е
    /// подходящо за лесно визуализиране на текущия месец в календар
    var weeks: [CalendarWeek]
    var name: String
}

/// Структура, която представя задача.
struct TaskItem: Hashable {
    /// Име на задачата
    var title: String
    /// Описание на задачата
    var description: String = ""
    /// Списък от асоциирани подзадачи
    var subTasks: [TaskItem]?
    /// Времето, в което трябва да бъде изпълнена задачата. Може да
    /// не е посочено
    var time: String?
    /// Дали задачата е изпълнена
    var isComplete: Bool
}

func shortDayNames(fromMonday: Bool = true) -> [String] {
    var result = [String]()
    for day in 1...7 {
        result.append(Calendar.current.shortWeekdaySymbols[day % 7])
    }
    return result
}
let calendarDayLabels: [String] = shortDayNames()
