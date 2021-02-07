//
//  1978.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation


func _1978() {
    var prime:[Bool] = [Bool](repeating: true, count : 1001)
    _ = Int(readLine()!)!
    let input = readLine()!.split(separator:" ").map({Int($0)!})
    prime[1] = false
    for i in 2...1000 {
        guard prime[i] == true else {
            continue
        }
        
        var mul = 2
        while i*mul <= 1000 {
            prime[i*mul] = false
            mul += 1
        }
    }
    var ret = 0
    for num in input {
        if prime[num] == true {
            ret += 1
        }
    }
    print(ret)
}
