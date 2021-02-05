//
//  2869.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/05.
//

import Foundation

func _2869() {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let A = input[0]
    let B = input[1]
    let V = input[2]
    
    let diff = A - B
    let distance = V - A
    var tmp = Double(distance) / Double(diff)
    tmp.round(.up)
    
    if distance <= 0 {
        print(1)
    } else {
        print(Int(tmp) + 1)
    }
    
}
