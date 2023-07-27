//
//  Side.swift
//  keyosk
//
//  Created by 보경 on 2023/07/27.
//

import Foundation

class Side {
    
    var menuName: [String]  = ["치킨 체다 더티 프라이즈","체다 치즈 치킨","웨스턴 핫 윙(8조각)","허니&갈릭 윙스","도미노 코울슬로"]
    var menuCost: [Int]  = [4600,9800,9800,5600,9800]
    
    let numset: [Int: Set]  = [
        1 : .food,
        2 : .food,
        3 : .food,
        4 : .food,
        5 : .food,
        6 : .home,
        7 : .exit,
    ]
    
    func side() {
        let menus: [String] = [
            "\(menuName[0]) ................ \(menuCost[0])",
            "\(menuName[1]) ................ \(menuCost[1])",
            "\(menuName[2]) ................ \(menuCost[2])",
            "\(menuName[3]) ................ \(menuCost[3])",
            "\(menuName[4]) ................ \(menuCost[3])",
            "홈으로 돌아가기",
            "종료"
        ]
        
        print("\n\n\n[SIDE MENU]\n")
        
        let foodRange = 1...5
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        
        guard foodRange.contains(numChoice) == true else{
            instances.operating.oper(numToSet)
            return
        }
        let cartAddName = menuName[numChoice - 1]
        
        print("\n-----------------------------------------------------")
        print("\n[ 장바구니에 담기 ]\n")
        
        print("\(cartAddName)를 몇 개 구매하시겠습니까?")
        let cartAddCount: Int = instances.selecting.numSelect(999)//stock
        let cartAddContent: [String : Int] = [cartAddName : cartAddCount]
        instances.cart.cart(cartAddContent, menuCost[numChoice - 1] * cartAddCount)
        return
    }
}
