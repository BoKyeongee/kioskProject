//
//  Pick.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Pick {
    let menus: [String] = ["피자","파스타","사이드","음료","피클&소스","홈 화면","종료"]
    
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
        print("\n\n[ PICK CATEGORIES ]\n")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
