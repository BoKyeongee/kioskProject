//
//  Pick.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Pick {
    let menus: [String] = ["PIZZA","PASTA","SIDE DISH","DRINKS","PIKKLES & SAUCES","홈으로 돌아가기","종료"]
    
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
        print("[ PICK CATEGORIES ]")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
