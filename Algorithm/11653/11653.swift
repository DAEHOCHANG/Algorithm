//
//  11653.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation

func _11653() {
    let number = Int(readLine()!)!
    var ret:[Int] = []
    if number == 1 {
        exit(0)
    }
    var tmp = number
    for n in 2...number {
        while tmp%n == 0 {
            ret.append(n)
            tmp = tmp/n
        }
    }
    print(ret.reduce(""){$0 + String($1) + "\n"})
}
