//
//  SideMenu.swift
//  team4work
//
//  Created by 김지은 on 2023/07/25.
//

import Foundation

class Side {
    let sideMenu = ["치킨 체다 더티 프라이즈":4.6, "체다 치즈 치킨":9.8, "웨스턴 핫 윙(8조각)":9.8, "허니&갈릭 윙스":5.6, "도미노 코울슬로":9.8, "프로그램 종료" : 0]
    
    
    var menuNumber = [""]
    
    func callSideMenu() -> String {
        let sideFlatMap = sideMenu.flatMap { (key, value) -> Array in
            var array: [String] = []
            if value != 0 {
                array.append("\(key) | W.\(value) |")
            } else {
                array.append(key)
            }
            return array
        }
        
        for (index, value) in sideFlatMap.enumerated() {
            if value != "프로그램 종료" {
                menuNumber.append("\(index + 1). \(value)")
            } else {
                menuNumber.append("0. \(value)")
            }
        }

        let menu = """
         
        아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

        [ SIDE MENU ]
        \(menuNumber.joined(separator: "\n"))
        """
        return menu
    }
}
