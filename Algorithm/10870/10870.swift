//
//  10870.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/13.
//

import Foundation
func _10870() {
    var arr = [0,1]
    let num = Int(readLine()!)!
    guard num >= 2 else {
        print(arr[num])
        exit(0)
    }
    
    for _ in 2...num {
        arr.append(arr[0] + arr[1])
        arr.removeFirst()
    }
    print(arr.last!)
}
