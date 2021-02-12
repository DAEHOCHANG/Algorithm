//
//  1085.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/12.
//

import Foundation
func _1085() {
    let input = readLine()!.split(separator:" ").map({Int($0)!})
    let x = input[0]
    let y = input[1]
    let w = input[2]
    let h = input[3]
    let ret = min(x, y, w-x, h-y)
    print(ret)
}
