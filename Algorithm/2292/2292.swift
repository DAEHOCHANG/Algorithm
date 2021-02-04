//
//  2292.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/05.
//

import Foundation

func _2292() {
    let roomNumber = Int(readLine()!)!
    var cur = 1
    var cnt = 1
    while cur < roomNumber {
        cur += cnt*6
        cnt += 1
    }
    print(cnt)
}
