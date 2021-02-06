//
//  2775.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/06.
//

import Foundation

func _2775() {
    let testCase = Int(readLine()!)!
    for _ in 1...testCase {
        let k = Int(readLine()!)!
        let n = Int(readLine()!)!
        var apt:[[Int]] = [[Int]](repeating: [Int](repeating: 0, count:n+1) , count :k+1)
        for i in 1...n {
            apt[0][i] = i
        }
        for i in 1...k {
            for j in 1...n {
                var sum = 0
                for k in 1...j {
                    sum += apt[i-1][k]
                }
                apt[i][j] = sum
            }
        }
        //print(apt)
        print(apt[k][n])
    }
}


