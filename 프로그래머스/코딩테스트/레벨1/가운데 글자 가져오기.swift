//
//  가운데 글자 가져오기.swift
//  Algorithm
//
//  Created by 고성민 on 2/20/24.
//

import Foundation

// MARK: 첫 번째 풀이
func solution(_ s:String) -> String {
    
    if s.count % 2 == 0 {
        
        let start = s.index(s.startIndex, offsetBy: s.count/2 - 1)
        let end = s.index(s.startIndex, offsetBy: s.count/2)
        
        let range = start...end
        
        return String(s[range])
        
    } else {
        let index = s.index(s.startIndex, offsetBy: s.count / 2)
        return String(s[index])
    }
}
