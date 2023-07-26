//
//  Pick.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Pick {
    let menus: [String] = ["P I Z Z A ","P A S T A ","S I D E","D R I N K ","P I K K L E  & S A U C E","H O M E","E X I T"]
    
    let numset: [Int: Set] = [
        1 : .pizza,
        2 : .pasta,
        3 : .side,
        4 : .drink,
        5 : .pikklesAndSauces,
        6 : .home,
        7 : .exit
    ]
    
    func pick() {
        print("\n\n\n[ P I C K C A T E G O R I E S ]\n")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
