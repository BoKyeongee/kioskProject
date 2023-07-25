//
//  Cart.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Cart {
    let menus: [String] = [
        "1. 결제하러 가기",
        "2. 메뉴 추가",
        "3. 뒤로 가기",
        "4. 홈 화면으로 돌아가기",
        "5. 장바구니 비우기",
        "0. 종료"
    ]
    
    let numset: [Int : Set] = [
        1 : .checkout,
        2 : .pick,
        3 : .pikklesAndSauces,
        4 : .home,
        5 : .clearCart
    ]
    
    var cartContent: [String : Int] = [:]
    
    func cart(_ input: [String : Int] = [:]) {
        cartContent.merge(input) {(_ , new) in new}
        print("[CART | 장바구니 입니다.]")
        print("")
        for (key,value) in cartContent {
            print("상품명: \(key)  |   수량: \(value)")
        }
        
        instances.printing.printMenu(menus) // 메뉴 프린팅
        var numChoice: Int = instances.selecting.numSelect() // Int 반환
        var numToSet: Set = numset[numChoice]!
        
        while true {
            if 0 <= numChoice && numChoice <= 4 {
                // 범위 내 숫자일 경우 Set type 변수에 할당하고 break
                numToSet = numset[numChoice]! // numSelect 에서 Int 아닌 경우 오류처리 했으므로 강제 언래핑
                break
            }
            else {
                print("메뉴에 없는 숫자 입니다.")
                print("올바른 숫자를 다시 입력해주세요.")
                numChoice = instances.selecting.numSelect()
            }
        }
        
        instances.operating.oper(numToSet)
        return
    }
}
