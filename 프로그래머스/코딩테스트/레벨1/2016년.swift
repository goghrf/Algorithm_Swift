//
//  2016년.swift
//  Algorithm
//
//  Created by 고성민 on 2/19/24.
//

import Foundation

// MARK: 첫 번째 풀이
func solution(_ a:Int, _ b:Int) -> String {
    
    var monthDay = [Int: Int]()
    
    for month in 1..<13 {
        
        if month == 4 || month == 6 || month == 9 || month == 11 {
            
            monthDay[month] = 30
        } else if month == 2 {
            monthDay[month] = 29
        } else {
            monthDay[month] = 31
        }
    }
    
    var totalDays = 0
    
    for month in 1..<a {
        
        totalDays += monthDay[month]!
    }
    
    totalDays += b
    
    switch totalDays % 7 {
    case 1:
        return "FRI"
    case 2:
        return "SAT"
    case 3:
        return "SUN"
    case 4:
        return "MON"
    case 5:
        return "TUE"
    case 6:
        return "WED"
    case 0:
        return "THU"
    default:
        return "에러"
    }
}

// MARK: 참고 풀이
func solution2(_ a:Int, _ b:Int) -> String {
    
    let days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDays = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var totalDays = monthDays[0..<a-1].reduce(0, {$0 + $1}) + b
    
    return days[totalDays % 7]
}
