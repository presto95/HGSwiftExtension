import Foundation

public extension Date {
    static func day(beforeDays days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
    }
    
    static func day(afterDays days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: Date()) ?? Date()
    }
    
    static func start(of day: Date) -> Date {
        return Calendar.current.startOfDay(for: day)
    }
    
    static func end(of day: Date) -> Date {
        let components = DateComponents(day: 1, second: -1)
        return Calendar.current.date(byAdding: components, to: day) ?? Date()
    }
}
