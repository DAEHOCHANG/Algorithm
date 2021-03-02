//
//  7568.swift
//  Algorithm
//
//  Created by 장대호 on 2021/03/02.
//

import Foundation
typealias person = (w:Int, h:Int,count:Int)
func _7568() {
    let num:Int = Int(readLine()!)!
    var arr:[(w:Int, h:Int,count:Int)] = []
    for _ in 1...num {
        let input = readLine()!.split(separator:" ").map({Int($0)!})
        arr.append((w:input[0], h:input[1],count:1))
    }
    
    for i in 0..<num {
        for j in 0..<num{
            if arr[i].h < arr[j].h && arr[i].w < arr[j].w {
                arr[i].count += 1
            }
        }
        print(arr[i].count,terminator: " ")
    }
}
