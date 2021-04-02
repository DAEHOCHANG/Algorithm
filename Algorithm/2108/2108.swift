//
//  2108.swift
//  Algorithm
//
//  Created by 장대호 on 2021/04/02.
//

import Foundation
func _2108() {
    let num = Int(readLine()!)!
    var arr:[Int] = []
    for _ in 1...num {
        let n = Int(readLine()!)!
        arr.append(n)
    }
    let sorted = arr.sorted()
    let sum = arr.reduce(0) {$0 + $1}
    let range = sorted.last! - sorted.first!
    let average = Int((Float(sum)/Float(arr.count)).rounded())
    let midNum = sorted[num/2]
  
    var ret = 0
    var doubleCnt = 0
    var retCount = 0
    var cur = 0
    while cur < num {
        let n = sorted[cur]
        var next = cur + 1
        var count = 1
        while next < num && n == sorted[next] {
            next += 1
            count += 1
        }

        if count > retCount {
            ret = n
            retCount = count
            doubleCnt = 1
        } else if count == retCount && doubleCnt <= 1{
            ret = n
            doubleCnt += 1
            retCount = count
        }
        
        cur  = next
    }
    print(average)
    print(midNum)
    print(ret)
    print(range)
}
