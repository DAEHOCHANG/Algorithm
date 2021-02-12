//
//  1002.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/12.
//

import Foundation

func _1002() {
    let testCase = Int(readLine()!)!
    for _ in 1...testCase {
        let input = readLine()!.split(separator: " ").map({Int($0)!})
        let x1 = input[0]
        let y1 = input[1]
        let r1 = input[2]
        let x2 = input[3]
        let y2 = input[4]
        let r2 = input[5]
        
        let d = abs(x1-x2) * abs(x1-x2) + abs(y1-y2) * abs(y1-y2)
        
        //걍 겹치는 경우
        guard x1 != x2 || y1 != y2 else {
            if r1 == r2 {
                print(-1)
            } else {
                print(0)
            }
            continue
        }
        
        if d > r1*r1 && d > r2*r2 {
            //포함 ㄴㄴ행
            
            let r = (r1 + r2) * (r1 + r2)
            
            if d < r {
                print(2)
            } else if d > r {
                print(0)
            } else {
                print(1)
            }
        } else {
            //한 원안에 다른 원의 중심이 있는경우
            
            var r = 0
            if r1 > r2 {
                r = (r1-r2)*(r1-r2)
            } else {
                r = (r2-r1)*(r2-r1)
            }
         
            if d > r {
                print(2)
            } else if d < r{
                print(0)
            } else {
                print(1)
            }
        }
    }
}
