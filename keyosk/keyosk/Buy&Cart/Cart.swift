//
//  Cart.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Cart {
    let menus: [String] = ["결제하러 가기","메뉴 추가","홈으로 가기","장바구니 비우기","종료"]
    
    let numset: [Int : Set] = [
        1 : .checkout,
        2 : .pick,
        3 : .home,
        4 : .clearCart,
        5 : .exit
    ]
    
    var cartContent: [String : Int] = [:]
    var price: Int = 0
    
    func cart(_ input: [String : Int] = [:], _ price: Int = 0) {
        cartContent.merge(input) {(_ , new) in new}
        self.price += price
        print("\n\n\n[CART | 장바구니]\n")
        for (key,value) in cartContent {
            print("상품명: \(key)  |   수량: \(value)")
        }
        
        print("===================================")
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        return
    }
}
