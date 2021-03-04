//
//  1436.swift
//  Algorithm
//
//  Created by 장대호 on 2021/03/04.
//

import Foundation

func _1436() {
    let num:Int = Int(readLine()!)!
    var cnt = 0
    var arr:[Int] = []
    var cur = 666
    while cnt < 10000 {
        let tmp = String(cur)
        var count = 0
        for a in tmp {
            if a == "6" {
                count += 1
            } else {
                count = 0
            }
            if count >= 3 {
                arr.append(cur)
                cnt+=1
                break
            }
        }
       
        cur += 1
    }
    print(arr[num-1])
}
