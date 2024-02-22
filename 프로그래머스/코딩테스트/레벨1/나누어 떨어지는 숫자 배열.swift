//
//  나누어 떨어지는 숫자 배열.swift
//  Algorithm
//
//  Created by 고성민 on 2/21/24.
//

import Foundation

// MARK: 첫 번째 풀이
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var result = arr.filter { $0 % divisor == 0}
    
    if result.isEmpty {
        result.append(-1)
        return result
    } else {
        return result.sorted()
    }
}


// MARK: 참고 풀이
func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    let result = arr.filter { $0 % divisor == 0}.sorted()
    
    return result.isEmpty ? [-1] : result
}
