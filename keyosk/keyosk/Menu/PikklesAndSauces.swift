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
        1 : .food,
        2 : .food,
        3 : .food,
        4 : .food,
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
        
        print("\n\n\n[PICKLLES & SAUCES MENU]\n")
        
        let foodRange = 1...4
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
    func showMenu() {
        for i in 0..<menuName.count {
            print("| \(i+1) |  \(menuName[i]) ................ \(menuCost[i])")
        }
        print("\n")
    }
    func modifyMenu (_ index : Int) {
        print("이름 : \(menuName[index-1])")
        print("가격 : \(menuCost[index-1])")
        print("변경할 이름 (입력하지 않을 시 변경되지 않습니다.)")
        let newName = getString()
        if newName != ""{
            menuName[index-1] = newName
        }
        print("변경할 가격 (입력하지 않을 시 변경되지 않습니다.)")
        let newCost = getInt()
        if newCost != -1 {
            menuCost[index-1] = newCost
        }
    }
}
