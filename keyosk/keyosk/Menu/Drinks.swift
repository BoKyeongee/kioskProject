//
//  Drinks.swift
//  team4work
//
//  Created by 남보경 on 2023/07/26.
//

import Foundation


class Drinks {
        var menuName : [String] = ["코카 콜라","펩시","스프라이트","웰치스","물"]
        var menuCost : [Int] = [ 1500, 1300, 1000, 1100, 900]
        
        let numset : [Int : Set] = [
            1: .food,
            2: .food,
            3: .food,
            4: .food,
            5: .food,
            6: . home,
            7: .exit
        ]
        
        func drink() {
            let menus: [String] = [
                "\(menuName[0]) ................ \(menuCost[0])",
                "\(menuName[1]) ................ \(menuCost[1])",
                "\(menuName[2]) ................ \(menuCost[2])",
                "\(menuName[3]) ................ \(menuCost[3])",
                "\(menuName[4]) ................ \(menuCost[4])",
                "홈으로 돌아가기",
                "종료"
            ]
            
            print("\n\n\n[DRINK MENU]\n")
            
            let foodRange = 1...5
            instances.printing.printMenu(menus)
            let numChoice : Int =
            instances.selecting.numSelect(menus.count)
            let numToSet : Set = numset[numChoice]!
            
            guard foodRange.contains(numChoice) == true else {
                instances.operating.oper(numToSet)
                return
            }
            let cartAddName = menuName [numChoice - 1]
            
            print("\n\n\n-----------------------------------------------------")
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


    

