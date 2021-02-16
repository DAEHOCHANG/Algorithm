//
//  2798.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/16.
//

import Foundation
func _2798() {
    let input = readLine()!.split(separator:" ").map({Int($0)!})
    _ = input[0]
    let M = input[1]
    let arr = readLine()!.split(separator:" ").map({Int($0)!})
    var rret = 0
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            for k in j+1..<arr.count {
                let ret = arr[i] + arr[j] + arr[k]
                if ret <= M && ret > rret {
                    rret = ret
                }
            }
        }
    }
    print(rret)
}
