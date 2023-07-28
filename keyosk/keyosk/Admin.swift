//
//  Admin.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Admin: Home {
    
    var password = "0000"
    
    func changePassword () {
        
        print("비밀번호를 입력하세요\n")
        let pw = getString()
        if pw.elementsEqual(password) {
            print("변경할 비밀번호를 입력하세요")
            let newpw = getString()
            password = newpw
        }
        else {
            print("비밀번호가 올바르지 않습니다.")
        }
        
    }
    
    func admin () {
        print("-----------------<  A D M I N  >-----------------\n")
        print("| 1 | 피자 메뉴 관리")
        print("| 2 | 파스타 메뉴 관리")
        print("| 3 | 사이드 메뉴 관리")
        print("| 4 | 음료 메뉴 관리")
        print("| 5 | 피클&소스 메뉴 관리")
        print("| 9 | 비밀번호 변경하기")
        print("| 0 | 돌아가기")
        print("\n-------------------------------------------------\n")
        let page = getInt()
        switch page {
        case 0:
            break
        case 1:
            print("수정할 메뉴를 골라주세요 \n")
            instances.pizzaMenu.showMenu()
            print("| 0 |  취소")
            let index = getInt()
            if index != 0 && index <= instances.pizzaMenu.menuName.count {
                instances.pizzaMenu.modifyMenu(index)
            }
            else{
                admin()
            }
        case 2:
            print("수정할 메뉴를 골라주세요 \n")
            instances.pastaMenu.showMenu()
            print("| 0 |  취소")
            let index = getInt()
            if index != 0 && index <= instances.pastaMenu.menuName.count {
                instances.pastaMenu.modifyMenu(index)
            }
            else{
                admin()
            }
        case 3 :
            print("수정할 메뉴를 골라주세요 \n")
            instances.sideMenu.showMenu()
            print("| 0 |  취소")
            let index = getInt()
            if index != 0 && index <= instances.sideMenu.menuName.count {
                instances.sideMenu.modifyMenu(index)
            }
            else{
                admin()
            }
        case 4 :
            print("수정할 메뉴를 골라주세요 \n")
            instances.drinkMenu.showMenu()
            print("| 0 |  취소")
            let index = getInt()
            if index != 0 && index <= instances.drinkMenu.menuName.count {
                instances.drinkMenu.modifyMenu(index)
            }
            else{
                admin()
            }
        case 5 :
            print("수정할 메뉴를 골라주세요 \n")
            instances.pns.showMenu()
            print("| 0 |  취소")
            let index = getInt()
            if index != 0 && index <= instances.pns.menuName.count {
                instances.pns.modifyMenu(index)
            }
            else{
                admin()
            }
        case 9:
            changePassword()
        default:
            break
        }
        home()
    }
}
