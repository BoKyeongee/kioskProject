//
//  DetailMenus.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

// 피클과 소스
class PikklesAndSauces {
    
    var menuName: [String]  = [
        "우리피클 M",
        "우리피클 L",
        "갈릭디핑소스",
        "핫소스",
    ]
    
    var menuCost: [Int]  = [
        500,
        800,
        200,
        100,
    ]
    
    func pns() {
        var menus: [String] = [
            "1. \(menuName[0])      | 가격: \(menuCost[0])",
            "2. \(menuName[1])      | 가격: \(menuCost[1])",
            "3. \(menuName[2])      | 가격: \(menuCost[2])",
            "4. \(menuName[3])      | 가격: \(menuCost[3])",
            "5. 홈으로 돌아가기",
            "0. 종료"
        ]

        let numset: [Int: Set]  = [
            1 : .pikkleM,
            2 : .pikkleL,
            3 : .garlicDip,
            4 : .hotSauce,
            5 : .home,
            0 : .exit,
        ]
        
        instances.printing.printMenu(menus) // 메뉴 프린팅
        var numChoice: Int = instances.selecting.numSelect() // Input Int 반환
        var numToSet: Set = numset[numChoice]! // Int를 Set값으로 변환
        
        while true {
            if 0 <= numChoice && numChoice <= 5 {
                // 범위 내 숫자일 경우 Set type 변수인 numToSet에 할당하고 break
                numToSet = numset[numChoice]!
                // numSelect 에서 Int 아닌 경우 오류처리 했으므로 강제 언래핑
                break
            }
            else {
                // 범위 내 숫자 외의 경우에는 반복문에 갇힘
                print("메뉴에 없는 숫자 입니다.")
                print("올바른 숫자를 다시 입력해주세요.")
                numChoice = instances.selecting.numSelect()
            }
        }
        
        let cartAddName = menuName[numChoice - 1]
        print("\(cartAddName)를 몇 개 구매하시겠습니까?")
        print("(숫자만 입력 | 예시. 3개 -> 3)")
        
        let cartAddCount: Int = Int(readLine()!) ?? 404
        if cartAddCount != 404 {
            let cartAddContent: [String : Int] = [cartAddName : cartAddCount]
            instances.cart.cart(cartAddContent)
        }
        
        
    }
}
