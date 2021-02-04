//
//  1712.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/04.
//

import Foundation

func _1712() {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let A = input[0]
    let B = input[1]
    let C = input[2]
    
    
    if C - B <= 0 {
        print(-1)
    } else {
        let ret = A/(C-B)
        print(ret+1)
    }
}
