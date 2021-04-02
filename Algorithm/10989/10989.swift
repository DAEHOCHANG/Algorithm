//
//  10989.swift
//  Algorithm
//
//  Created by 장대호 on 2021/03/05.
//

import Foundation
func _10989() {
    var arr:[Int] = [Int](repeating: 0, count: 10001)
    let num = Int(readLine()!)!
    for _ in 1...num {
        let n = Int(readLine()!)!
        arr[n] += 1
    }
    for i in 0...10000 {
        let t = arr[i]
        for _ in 0..<t {
            print(i)
        }
    }
}
