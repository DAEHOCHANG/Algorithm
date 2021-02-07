//
//  4948.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation

func _4948() {
    var prime:[Bool] = [Bool](repeating: true, count : 250000)

    prime[1] = false
    for i in 2...249999 {
        guard prime[i] == true else {
            continue
        }
        
        var mul = 2
        while i*mul <= 249999 {
            prime[i*mul] = false
            mul += 1
        }
    }
    
    while true {
        let s = Int(readLine()!)!
        let e = s*2
        if s == 0 {
            break
        }
        
        var ret = 0
        
        for cur in s+1...e {
            if prime[cur] == true {
                ret += 1
            }
        }
        print(ret)
    }

}
