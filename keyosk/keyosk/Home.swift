//
//  Home.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Home{
    var menus: [String] = ["P I C K  M E N U","C A R T","C H E C K  O U T","A D M I N","E X I T"]
    
    let numset: [Int: Set] = [
        1 : .pick,
        2 : .cart,
        3 : .checkout,
        4 : .admin,
        5 : .exit
    ]
    
    func home() {
        print("\n\n\n-----------------<  W E L C O M E  >-----------------\n")
        print("[ D O M I N O  P I Z Z A ]\n")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
