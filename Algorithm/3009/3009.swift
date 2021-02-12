//
//  3009.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/12.
//

import Foundation
func _3009() {
    var arrX:[Int] = []
    var arrY:[Int] = []
    var ret:[Int] = []
    for _ in 1...3 {
        let input = readLine()!.split(separator:" ").map({Int($0)!})
        let x = input[0]
        let y = input[1]
        arrX.append(x)
        arrY.append(y)
    }
    if arrX[0] == arrX[1]  {
        ret.append(arrX[2])
    } else if arrX[0] == arrX[2] {
        ret.append(arrX[1])
    } else {
        ret.append(arrX[0])
    }
    
    if arrY[0] == arrY[1]  {
        ret.append(arrY[2])
    } else if arrY[0] == arrY[2] {
        ret.append(arrY[1])
    } else {
        ret.append(arrY[0])
    }
    
    print("\(ret[0]) \(ret[1])")
}
