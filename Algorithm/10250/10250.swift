//
//  10250.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/05.
//

import Foundation


//H , W , N
func _10250() {
    let testCase = Int(readLine()!)!
    var ret:[String] = []
    for _ in 1...testCase {
        let input = readLine()!.split(separator: " ").map({Int($0)!})
        let H = input[0]
        _ = input[1]
        let N = input[2]
        
        var number = Double(N) / Double(H)
        number.round(.up)
        var floor = N % H
        if floor == 0 {
            floor = H
        }
        if number >= 10 {
            ret.append("\(Int(floor))\(Int(number))")
        } else {
            ret.append("\(Int(floor))0\(Int(number))")
        }
    }
    print(ret.reduce("") {$0 + $1 + "\n"})
}
