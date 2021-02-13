//
//  10872.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/13.
//

import Foundation

func _10872() {
    let num = Int(readLine()!)!
    var arr = [1]
    guard num > 1 else {
        print(1)
        exit(0)
    }
    for i in 1...num {
        arr.append(arr.last! * i)
    }
    print(arr.last!)
}
