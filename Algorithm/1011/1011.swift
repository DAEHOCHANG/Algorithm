//
//  1011.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/06.
//

import Foundation
var numbering:[Int] = [0,1]
func _1011() {
    let testCase = Int(readLine()!)!
    for _ in 1...47000 {
        numbering.append(numbering.last! + 2)
    }
    
    for _ in 1...testCase {
        let arr = [1,2,3]
        let input = readLine()!.split(separator:" ").map({Int($0)!})
        let s = input[0]
        let e = input[1]
        guard e-s > 3 else {
            print(arr[e-s-1])
            continue
        }
        
        let diff = e - s
        var nUp = sqrt(Double(diff))
        let origin = nUp
        nUp.round(.up)
        if origin == nUp {
            print(numbering[Int(origin)])
        } else if nUp - origin > 0.5 {
            print(numbering[Int(origin)]+1)
        } else {
            print(numbering[Int(origin)]+2)
        }
    }
}
