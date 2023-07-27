//
//  Pizza.swift
//  keyosk
//
//  Created by 보경 on 2023/07/27.
//

import Foundation

class Pizza {
    
    var menuName: [String]  = ["치즈 크레이프 샌드 피자","아보카도 새우 피자","대만 콘 치즈 감자 피자","이탈리아 마르게리따 피자"]
    var menuCost: [Int]  = [34900,27900,17900,17900]
    
    let numset: [Int: Set]  = [
        1 : .pikkleM,
        2 : .pikkleL,
        3 : .garlicDip,
        4 : .hotSauce,
        5 : .home,
        6 : .exit,
    ]
    
    func pizza() {
        let menus: [String] = [
            "\(menuName[0]) ................ \(menuCost[0])",
            "\(menuName[1]) ................ \(menuCost[1])",
            "\(menuName[2]) ................ \(menuCost[2])",
            "\(menuName[3]) ................ \(menuCost[3])",
            "홈으로 돌아가기",
            "종료"
        ]
        
        print("\n\n\n[PIZZA MENU]\n")
        
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
        print("\n[ A D D  T O  C A R T ]\n")
        
        print("\(cartAddName)를 몇 개 구매하시겠습니까?")
        let cartAddCount: Int = instances.selecting.numSelect(999)//stock
        let cartAddContent: [String : Int] = [cartAddName : cartAddCount]
        instances.cart.cart(cartAddContent)
        return
    }
}
