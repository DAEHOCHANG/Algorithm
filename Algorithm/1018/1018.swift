//
//  1018.swift
//  Algorithm
//
//  Created by 장대호 on 2021/03/03.
//

import Foundation
func checkChessBoard(_ arr:[[Bool]],_ x:Int, _ y:Int, _ n: Int) -> Int{
    var prev = !arr[x][y]
    var count = 0
    for i in x...x+n-1 {
        for j in y...y+n-1{
            if arr[i][j] != !prev {
                count += 1
            }
            prev = !prev
        }
        prev = !prev
    }
    if count < n*n/2 {
        return count
    } else {
        return n*n - count
    }
}

func _1018() {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let N = input[0]
    let M = input[1]
    
    var arr:[[Bool]] = []
    for _ in 1...N {
        let line = readLine()!
        var tmp:[Bool] = []
        for c in line {
            if c == "W" {
                tmp.append(false)
            } else {
                tmp.append(true)
            }
        }
        arr.append(tmp)
    }
    var result = 65
    for i in 0...N-8 {
        for j in 0...M-8{
            let count = checkChessBoard(arr, i,j,8)
            if result > count {
                result = count
            }
        }
    }
    print(result)
}
