//
//  2751.swift
//  Algorithm
//
//  Created by 장대호 on 2021/03/05.
//

import Foundation
func _2751() {
    let n = Int(readLine()!)!
    var arr:[Int] = []
    for _ in 1...n {
        let num = Int(readLine()!)!
        arr.append(num)
    }
    arr.sort(by: { $0 < $1})
    for a in arr {
        print(a)
    }
}
