//
//  DetailMenus.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

// 피클과 소스
class PikklesAndSauces {
    
    var menuName: [String]  = ["우 리 피 클 M","우 리 피 클 L","갈 릭 디 핑 소 스","핫 소 스"]
    var menuCost: [Int]  = [500,800,200,100]
    
    let numset: [Int: Set]  = [
        1 : .pikkleM,
        2 : .pikkleL,
        3 : .garlicDip,
        4 : .hotSauce,
        5 : .home,
        6 : .exit,
    ]
    
    func pns() {
        let menus: [String] = [
            "\(menuName[0]) ................ \(menuCost[0])",
            "\(menuName[1]) ................ \(menuCost[1])",
            "\(menuName[2]) ................ \(menuCost[2])",
            "\(menuName[3]) ................ \(menuCost[3])",
            "홈으로 돌아가기",
            "종료"
        ]
        
        print("\n\n\n[PICKLLES & SAUCES]\n")
        
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
        print("\n[ A D D  T O  C A R T ]")
        
        print("\(cartAddName)를 몇 개 구매하시겠습니까?")
        let cartAddCount: Int = instances.selecting.numSelect(999)//stock
        let cartAddContent: [String : Int] = [cartAddName : cartAddCount]
        instances.cart.cart(cartAddContent)
        return
    }
}
