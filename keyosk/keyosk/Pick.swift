//
//  Pick.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Pick {
    let menus: [String] = [
        "1. PIZZA",
        "2. PASTA",
        "3. SIDE DISH",
        "4. DRINKS",
        "5. PIKKLES & SAUCES",
        "6. 홈으로 돌아가기",
        "0. 종료"
    ]
    
    let numset: [Int: Set] = [
        1 : .pizza,
        2 : .pasta,
        3 : .side,
        4 : .drink,
        5 : .pikklesAndSauces,
        6 : .home,
        0 : .exit
    ]
    
    func pick() {
        instances.printing.printMenu(menus) // 메뉴 프린팅
        var numChoice: Int = instances.selecting.numSelect() // Int 반환
        
        while true {
            if 0 <= numChoice && numChoice <= 6 {
                // 범위 내 숫자일 경우 Set type 변수에 할당하고 break
                let numToSet: Set = numset[numChoice]! // numSelect 에서 Int 아닌 경우 오류처리 했으므로 강제 언래핑
                instances.operating.oper(numToSet)
                return
            }
            else {
                print("메뉴에 없는 숫자 입니다.")
                print("올바른 숫자를 다시 입력해주세요.")
                numChoice = instances.selecting.numSelect()
            }
        }

    }
}
