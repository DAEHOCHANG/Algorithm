//
//  1193.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/05.
//

import Foundation

func _1193() {
    let number = Int(readLine()!)!
    var cur = 1
    var val = 2
    var cnt = 1
    while cur < number {
        cur += val
        val += 1
        cnt += 1
    }
    
    let diff = cur - number
    cnt -= diff
    let rest = 1 + diff
    
    if val % 2 == 0 {
        print("\(rest)/\(cnt)")
    } else {
        print("\(cnt)/\(rest)")
    }
}
