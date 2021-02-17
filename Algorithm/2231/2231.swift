//
//  2231.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/17.
//

import Foundation

func _2331() {
    let num = Int(readLine()!)!
    var ret = 0
    for n in 1...num {
        var sum = n
        for a in "\(n)" {
            sum += Int(String(a))!
        }
        if sum == num {
            ret = n
            break
        }
    }
    print(ret)
}
