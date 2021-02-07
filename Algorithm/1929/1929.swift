//
//  1929.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation

func _1929() {
    var prime:[Bool] = [Bool](repeating: true, count : 1000001)
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let s = input[0]
    let e = input[1]
    prime[1] = false
    for i in 2...1000000 {
        guard prime[i] == true else {
            continue
        }
        
        var mul = 2
        while i*mul <= 1000000 {
            prime[i*mul] = false
            mul += 1
        }
    }

    for cur in s...e {
        if prime[cur] == true {
            print(cur)
        }
    }

}
