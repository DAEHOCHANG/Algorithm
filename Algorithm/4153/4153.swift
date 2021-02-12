//
//  4153.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/12.
//

import Foundation

func _4153() {
    while true {
        let input = readLine()!.split(separator:" ").map({Int($0)!})
        if input[0] == 0 && input[1] == 0 && input[2] == 0{
            break
        }
        
        let powSum = input[0]*input[0] + input[1]*input[1] + input[2]*input[2]
        if input[0]*input[0]*2 == powSum || input[1]*input[1]*2 == powSum || input[2]*input[2]*2 == powSum {
            print("right")
        } else {
            print("wrong")
        }
    }
}
