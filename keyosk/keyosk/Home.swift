//
//  Home.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Home{
    let menus: [String] = [
        "1. 주문하기",
        "2. 장바구니",
        "3. 결제하기",
        "4. 관리자 메뉴",
        "0. 종료"
    ]
    
    let numset: [Int: Set] = [
        1 : .pick,
        2 : .cart,
        3 : .checkout,
        4 : .admin,
        0 : .exit
    ]
    
    func home() {
        print("[ WELCOME TO DOMINO PIZZA ]")
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
        
    }
}
