//
//  Pasta.swift
//  keyosk
//
//  Created by 보경 on 2023/07/27.
//

import Foundation

class Pasta {
    
    var menuName: [String]  = ["불고기 파스타","치즈 볼로네즈 파스타","치킨 볼 파스타","베이컨 파스타"]
    var menuCost: [Int]  = [8800,9800,9800,8800]
    
    let numset: [Int: Set]  = [
        1 : .food,
        2 : .food,
        3 : .food,
        4 : .food,
        5 : .home,
        6 : .exit,
    ]
    
    func pasta() {
        let menus: [String] = [
            "\(menuName[0]) ................ \(menuCost[0])",
            "\(menuName[1]) ................ \(menuCost[1])",
            "\(menuName[2]) ................ \(menuCost[2])",
            "\(menuName[3]) ................ \(menuCost[3])",
            "홈으로 돌아가기",
            "종료"
        ]
        
        print("\n\n\n[PASTA MENU]\n")
        
        let foodRange = 1...4
        instances.printing.printMenu(menus) // 메뉴 프린팅
        let numChoice: Int = instances.selecting.numSelect(menus.count)
        let numToSet: Set = numset[numChoice]!
        
        guard foodRange.contains(numChoice) == true else{
            instances.operating.oper(numToSet)
            return
        }
        let cartAddName = menuName[numChoice - 1]
        
        print("\n\n\n-----------------------------------------------------")
        print("\n[ 장바구니에 담기 ]\n")
        
        print("\(cartAddName)를 몇 개 구매하시겠습니까?")
        let cartAddCount: Int = instances.selecting.numSelect(999)//stock
        let cartAddContent: [String : Int] = [cartAddName : cartAddCount]
        instances.cart.cart(cartAddContent)
        return
    }
}
