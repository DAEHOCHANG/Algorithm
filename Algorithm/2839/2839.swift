//
//  2839.swift
//  Algorithm
//
//  Created by 장대호 on 2021/02/06.
//

import Foundation

func _2839() {
    let num = Int(readLine()!)!
    var arr:[Int] = [Int](repeating: -1, count: 5001)
    arr[3] = 1
    arr[5] = 1
    guard num > 5 else {
        print(arr[num])
        exit(0)
    }
    
    for n in 6...num {
        let one = arr[n-3]
        let two = arr[n-5]
        if one == -1 && two == -1 {
            continue
        } else if one == -1 {
            arr[n] = two + 1
        } else if two == -1 {
            arr[n] = one + 1
        } else {
            
            arr[n] = one < two ? one : two // 둘중에 작은거
            arr[n] += 1
        }
    }
    print(arr[num])
}

//배열 개수를 아껴봅시다
func _2839_V2() {
    let num = Int(readLine()!)!
    var arr:[Int] = [Int](repeating: -1, count: 6)
    var subArr:[Int] = [Int](repeating: -1, count: 6)
    arr[3] = 1
    arr[5] = 1
    
    guard num > 5 else {
        print(arr[num])
        exit(0)
    }
    for n in 6...num {
        var one = 0
        var two = 0
        let diff = (n-1)%5
        if diff <= 2 {
            one = arr[arr.count - 1 - (2-diff)]
        } else {
            one = subArr[diff - 2]
        }
        two = arr[arr.count - 1 - (4-diff)]
        
        if one == -1 && two == -1 {
            continue
        } else if one == -1 {
            subArr[diff+1] = two + 1
        } else if two == -1 {
            subArr[diff+1] = one + 1
        } else {
            subArr[diff+1] = one < two ? one : two // 둘중에 작은거
            subArr[diff+1] += 1
        }
        
        if diff == 4 {
    //        print(arr)
            arr = subArr
        }
    }
//    print(subArr)
    print(subArr[(num-1)%5 + 1])
}

