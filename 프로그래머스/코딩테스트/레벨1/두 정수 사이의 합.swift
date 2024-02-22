//
//  두 정수 사이의 합.swift
//  Algorithm
//
//  Created by 고성민 on 2/21/24.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var sum = 0
    
    if a <= b {
        for number in a...b {
            
            sum += number
        }
    } else {
        for number in b...a {
            sum += number
        }
    }
    
    var result: Int64 = Int64(sum)
    
    return result
}
