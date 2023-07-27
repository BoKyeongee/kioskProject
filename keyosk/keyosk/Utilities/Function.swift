//
//  Function.swift
//  keyosk
//
//  Created by 김지은 on 2023/07/27.
//

import Foundation

func getInt () -> Int {
    var value : Int
    if let x = Int(readLine()!) {
        value = x
    }
    else {
        value = -1
    }
    return value
}
func getString () -> String {
    var value : String
    if let x = readLine() {
        value = x
    }
    else {
        value = ""
    }
    return value
}
