//
//  Date+Helper.swift
//  Chat-besh
//
//  Created by bashayer Mohammad on 09/07/1443 AH.
//

import Foundation

extension Date {
    
    func descriptiveString(dateStyle: DateFormatter.Style = .short) -> String {
        
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        
        let daysBetween = self.daysBetween(date: Date())
        
        
        if daysBetween == 0 {
            return "Todday"
        }
        else if daysBetween == 1 {
            return "Yesterday"
        }
        else if daysBetween < 5 {
            let weekdayIndex = Calendar.current.component(.weekday , from: self)
            return formatter.weekdaySymbols[weekdayIndex-1]
        }
        return formatter.string(from: self)
    }
        
        
        
    func daysBetween(date: Date) -> Int {
        let calendar = Calendar.current
        let date1 = calendar.startOfDay(for: self)
        let date2 = calendar.startOfDay(for: date)
        if let daysBetween = calendar.dateComponents([.day], from: date1, to: date2).day {
            
            return daysBetween
        }
        return 0
    }
}
