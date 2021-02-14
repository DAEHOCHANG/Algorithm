//
//  2447.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/13.
//

import Foundation
var arr:[[Int]] = [[Int]](repeating: [Int](repeating: 0, count: 2201), count: 2201)
func recursive(_ x:Int , _ y:Int, _ num:Int) {
    if num == 1 {
        arr[x][y] = 1
    } else {
        let div3 = num/3
        for nx in 0...2 {
            for ny in 0...2 {
                if nx == 1 && ny == 1{
                    continue
                }
                recursive(x + nx*div3, y + ny*div3, div3)
            }
        }
    }
}

func _2447() {
    let num = Int(readLine()!)!
    recursive(0,0,num)
    var ret:String = ""
    for i in 0..<num {
        for j in 0..<num {
            if arr[i][j] == 1{
                ret += "*"
            }else {
                ret += " "
            }
        }
        ret += "\n"
    }
    print(ret)
}
