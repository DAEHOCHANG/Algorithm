//
//  2581.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation

func _2581() {
    var prime:[Bool] = [Bool](repeating: true, count : 10001)
    let s = Int(readLine()!)!
    let e = Int(readLine()!)!
    prime[1] = false
    for i in 2...10000 {
        guard prime[i] == true else {
            continue
        }
        
        var mul = 2
        while i*mul <= 10000 {
            prime[i*mul] = false
            mul += 1
        }
    }
    var ret = 0
    var min = 1000000
    for cur in s...e {
        if prime[cur] == true {
            ret += cur
            if min > ret {
                min = ret
            }
        }
    }
    if ret == 0{
        print(-1)
    }else{
        print(ret)
        print(min)
    }
}
