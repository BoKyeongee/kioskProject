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
        print("| 2 | 피자 상셍메뉴 관리")
        print("| 9 | 비밀번호 변경하기")
        print("| 0 | 돌아가기")
        print("\n-------------------------------------------------\n")
        let page = getInt()
        switch page {
        case 0:
            break
        case 1:
            print("수정할 메뉴를 골라주세요 \n")
            print("| 1 |  메뉴 수정하기")
            print("| 2 |  메뉴 추가하기")
            let select = getInt()
            if select == 1 {
                instances.printing.printMenu(menus) // 메뉴 프린팅
                let index = getInt() - 1
                print("이름 : \(menus[index])")
                print("변경할 이름 (입력하지 않을 시 변경되지 않습니다.")
                let name = getString()
                if name != "" {
                    menus[index] = name
                }
            }
            else if select == 2 {
                print("추가할 메뉴의 이름을 입력해주세요")
                let name = getString()
                menus.append(name)
            }
        case 2:
            print("수정할 상세 메뉴를 골라주세요 \n")
            print("| 1 |  메뉴 수정하기")
            print("| 2 |  메뉴 추가하기")
            let select = getInt()
            if select == 1 {
                instances.printing.printMenu(menus) // 메뉴 프린팅
                let index = getInt() - 1
                getMenuNumb(numb: index)
                print("이름 : \(menus[index])")
                print("변경할 이름 (입력하지 않을 시 변경되지 않습니다.")
                let name = getString()
                if name != "" {
                    menus[index] = name
                }
            }
            else if select == 2 {
                print("추가할 메뉴의 이름을 입력해주세요")
                let name = getString()
                menus.append(name)
            }

        case 9:
            changePassword()
        default:
            break
        }
        home()
    }
}
