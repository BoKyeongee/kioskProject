//
//  Menu.swift
//  team4work
//
//  Created by 김지은 on 2023/07/25.
//

import Foundation

class Menu {
    var detailMenu = ["피자", "사이드", "파스타", "음료", "피클&소스", "프로그램 종료"]
    
    init(detailMenu: [String] = ["피자", "사이드", "파스타", "음료", "피클&소스", "프로그램 종료"]) {
        self.detailMenu = detailMenu
    }
    
    func callMenu() {
        for (index, value) in detailMenu.enumerated() {
            if value != "프로그램 종료" {
                detailMenu[index] = "\(index + 1). \(value)"
            } else {
                detailMenu[index] = "\(0). \(value)"
            }
        }
        
        let menu = """
        "DOMINO PIZZA 에 오신걸 환영합니다."
        아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

        [ DOMINO MENU ]
        \(detailMenu.joined(separator: "\n"))
        
        [ ORDER MENU ]
        5. Order       | 장바구니를 확인 후 주문합니다.
        6. Cancel      | 진행중인 주문을 취소합니다.
        """
        print(menu)
        
        let input = readLine()!
        
        inputRead(input: Int(input)!)
    }
    
    func inputRead(input: Int) {
        switch input {
        case 1:
            break
        case 2:
            Side().callSideMenu()
        case 3:
            break
        case 4:
            break
        case 5:
            Buy().buyBasket()
        case 6:
            break
        case 7:
            break
        case 0:
            exit(0)
        default:
            while true {
                print("잘못된 번호를 입력했어요 다시 입력해주세요.")
                let input = readLine()!
                if Int(input)! < 6 && Int(input)! > -1 {
                    inputRead(input: Int(input)!)
                    break
                }
            }
        }
    }
}
