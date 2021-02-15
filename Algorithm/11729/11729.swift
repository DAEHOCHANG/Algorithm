//
//  11729.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/14.
//

import Foundation
var p = ""
var cnt = 0
func hanoi(start s:Int,end e:Int, num n:Int){
    cnt += 1
    if n == 1 {
        p += "\(s) \(e)\n"
        return
    }
    //s -> ? -> e
    let m = 6 - s - e
    hanoi(start: s, end: m, num: n-1)
    p += "\(s) \(e)\n"
    hanoi(start: m, end: e, num: n-1)
}

func _11729() {
    let num = Int(readLine()!)!
    hanoi(start: 1, end: 3, num: num)
    print(cnt)
    print(p)
}
