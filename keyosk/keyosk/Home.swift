//
//  Home.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Home{
    let menus: [String] = ["주문하기","장바구니 확인","결제하기","관리자","종료"]
    
    let numset: [Int: Set] = [
        1 : .pick,
        2 : .cart,
        3 : .checkout,
        4 : .admin,
        5 : .exit
    ]
    
    func home() {
        print("\n\n\n-----------------<  W E L C O M E  >-----------------\n")
        print("[ DOMINO  PIZZA ]\n")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
