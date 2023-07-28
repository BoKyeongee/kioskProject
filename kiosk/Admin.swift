//
//  Admin.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Admin {
    func showMenu (_ menulist : [Menu]) {
        for i in 0..<menulist.count {
            print(" | \(i+1) |   \(menulist[i].name) ")
        }
    }
    func getPrice () -> Int {
        var value : Int
        if let x = Int(readLine()!) {
            value = x
        }
        else {
            value = -1
        }
        return value
    }
    func getName () -> String {
        var value : String
        if let x = readLine() {
            value = x
        }
        else {
            value = ""
        }
        return value
    }
    func admin() {
        print("관리자 화면 입니다")
        print("| 1 | PIZZA 메뉴 관리")
        print("| 2 | PASTA 메뉴 관리")
        print("| 3 | SIDE 메뉴 관리")
        print("| 4 | DRINK 메뉴 관리")
        print("| 5 | PICKKLE & SAUCE 메뉴 관리")
        print("| 0 | 돌아가기")
        let index = instances.functions.getInt(5)
        switch index {
        case 1 :
            showMenu(instances.productData.pizzaMenu)
            let menuNum = instances.functions.getInt(instances.productData.pizzaMenu.count)
            print("이름 : \(instances.productData.pizzaMenu[menuNum-1].name) 가격 : \((instances.productData.pizzaMenu[menuNum - 1].price)) ")
            print("수정할 메뉴 이름을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newName = getName()
            print("수정할 메뉴 가격을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pizzaMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pizzaMenu[menuNum - 1].price = newPrice
            }
        case 2:
            showMenu(instances.productData.pastaMenu)
            let menuNum = instances.functions.getInt(instances.productData.pastaMenu.count)
            print("이름 : \(instances.productData.pastaMenu[menuNum-1].name) 가격 : \((instances.productData.pastaMenu[menuNum-1].price)) ")
            print("수정할 메뉴 이름을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newName = getName()
            print("수정할 메뉴 가격을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pastaMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pastaMenu[menuNum - 1].price = newPrice
            }
        case 3:
            showMenu(instances.productData.sideMenu)
            let menuNum = instances.functions.getInt(instances.productData.sideMenu.count)
            print("이름 : \(instances.productData.sideMenu[menuNum-1].name) 가격 : \((instances.productData.sideMenu[menuNum-1].price)) ")
            print("수정할 메뉴 이름을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newName = getName()
            print("수정할 메뉴 가격을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.sideMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.sideMenu[menuNum - 1].price = newPrice
            }
        case 4:
            showMenu(instances.productData.drinkMenu)
            let menuNum = instances.functions.getInt(instances.productData.drinkMenu.count)
            print("이름 : \(instances.productData.drinkMenu[menuNum-1].name) 가격 : \((instances.productData.drinkMenu[menuNum-1].price)) ")
            print("수정할 메뉴 이름을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newName = getName()
            print("수정할 메뉴 가격을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.drinkMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.drinkMenu[menuNum - 1].price = newPrice
            }
        case 5:
            showMenu(instances.productData.pickkleMenu)
            let menuNum = instances.functions.getInt(instances.productData.pickkleMenu.count)
            print("이름 : \(instances.productData.pickkleMenu[menuNum-1].name) 가격 : \((instances.productData.pickkleMenu[menuNum-1].price)) ")
            print("수정할 메뉴 이름을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newName = getName()
            print("수정할 메뉴 가격을 입력하세요 (아무것도 입력하지 않을 시 변경되지 않습니다.)")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pickkleMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pickkleMenu[menuNum - 1].price = newPrice
            }
        default: instances.categories.category(instances.productData.homeMenu)
        }
        instances.categories.category(instances.productData.homeMenu)
        return
    }
}
