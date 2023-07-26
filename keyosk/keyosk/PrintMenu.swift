//
//  PrintMenu.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class PrintMenu {
    
    func printMenu(_ menus: [String]) {
        for index in 0..<menus.count {
            print("\(index + 1). \(menus[index])")
        }
    }
}
