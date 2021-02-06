//
//  10757.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/06.
//

import Foundation
func _10757() {
    let input:[String] = readLine()!.split(separator:" ").map({String($0)})
    let atmp:String = input[0]
    let btmp:String = input[1]
    let A = Array(atmp.reversed()).map({Int(String($0))!})
    let B = Array(btmp.reversed()).map({Int(String($0))!})
    let length = A.count > B.count ? A.count : B.count
    var C:[Int] = [Int](repeating :0 , count : length)
    for i in 0..<A.count {
        C[i] += A[i]
    }
    for i in 0..<B.count {
        C[i] += B[i]
    }
    for i in 0..<C.count - 1 {
        if C[i] >= 10 {
            C[i] = C[i]%10
            if i < C.count - 1 {
                C[i+1] += 1
            } else {
                C.append(1)
            }
        }
    }
    print(C.reversed().reduce(""){$0 + String($1)})
}
