//
//  Checkout.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Checkout {
    func checkout() {
        let menus : [String] = [
            "주문",
            "메뉴"
        ]
        
        let numset : [Int: Set] = [
            1 : .orderComplete,
            2 : .pick
        ]
        let cartContent : [String : Int] = instances.cart.cartContent
        let price : Int = instances.cart.price
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let priceResult = numberFormatter.string(for: price)!
        
        
        print("아래와 같이 주문 하시겠습니까?\n")
        print("[ Orders ]")
        for (key, value) in cartContent {
            print("메뉴명: \(key)  수량: \(value)")
        }
        print("\n[ Total ]")
        print("\(priceResult)\n")
        
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        instances.operating.oper(numToSet)
        
    }
}
