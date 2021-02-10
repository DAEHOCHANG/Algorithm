//
//  9020.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/07.
//

import Foundation

func _9020() {
    let testCase = Int(readLine()!)!
    var prime:[Bool] = [Bool](repeating: true, count: 10001)

    for i in 2...10000 {
        if prime[i] == true {

            var cur = i + i
            while cur < 10000 {
                prime[cur] = false
                cur += i
            }
        }
    }
    for _ in 1...testCase {
        let number = Int(readLine()!)!
        var l = 0
        var r = 10000
        for cur in 2...number {
            if prime[cur] == true && prime[number-cur] == true && abs(number-cur*2) < abs(r-l) {
                if number-cur < cur {
                    r = cur
                    l = number - cur
                } else {
                    l = cur
                    r = number - cur
                }
            }
        }
        print("\(l) \(r)")
    }
}
