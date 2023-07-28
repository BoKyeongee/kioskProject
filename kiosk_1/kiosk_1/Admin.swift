//
//  Admin.swift
//  keyosk
//
//  Created by 찬호 on 2023/07/25.
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
        print("\n\n[ 관리자 화면 ]\n")
        print("| 1 | PIZZA 메뉴 관리")
        print("| 2 | PASTA 메뉴 관리")
        print("| 3 | SIDE 메뉴 관리")
        print("| 4 | DRINK 메뉴 관리")
        print("| 5 | PICKKLE & SAUCE 메뉴 관리")
        print("| 6 | 돌아가기")
        print("\n===============================")
        let index = instances.functions.getInt(5)
        switch index {
        case 1 :
            print("\n\n[ 피자 메뉴 수정 화면 ]\n")
            showMenu(instances.productData.pizzaMenu)
            print("\n===============================")
            print("", terminator: "  >>  ")
            let menuNum = instances.functions.getInt(instances.productData.pizzaMenu.count)
            let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
            let priceFormat = numberFormatter.string(from: instances.productData.pastaMenu[menuNum - 1].price as NSNumber) ?? ""
            print("\n\n[ 현재 메뉴 정보 ]\n")
            print("\n이름 : \(instances.productData.pizzaMenu[menuNum-1].name)\n가격 : \(priceFormat)원 ")
            print("\n수정할 메뉴 이름을 입력하세요.\n(공백 불가, 영어와 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newName = getName()
            print("\n수정할 메뉴 가격을 입력하세요\n(공백 불가, 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pizzaMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pizzaMenu[menuNum - 1].price = newPrice
            }
            print("변경이 완료 됐습니다\n\n")
        case 2:
            print("\n\n[ 파스타 메뉴 수정 화면 ]\n")
            showMenu(instances.productData.pastaMenu)
            print("\n===============================")
            let menuNum = instances.functions.getInt(instances.productData.pastaMenu.count)
            let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        
                        // 지폐 단위로 가격 변경
            let priceFormat = numberFormatter.string(from: instances.productData.pastaMenu[menuNum - 1].price as NSNumber) ?? ""
            print("\n\n[ 현재 메뉴 정보 ]\n")
            print("\n이름 : \(instances.productData.pastaMenu[menuNum-1].name) \n가격 : \(priceFormat)원")
            print("\n수정할 메뉴 이름을 입력하세요.\n(공백 불가, 영어와 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newName = getName()
            print("\n수정할 메뉴 가격을 입력하세요\n(공백 불가, 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pastaMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pastaMenu[menuNum - 1].price = newPrice
            }
            print("변경이 완료 됐습니다\n\n")
        case 3:
            print("\n\n[ 사이드 메뉴 수정 화면 ]\n")
            showMenu(instances.productData.sideMenu)
            print("\n===============================")
            let menuNum = instances.functions.getInt(instances.productData.sideMenu.count)
            let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        
                        // 지폐 단위로 가격 변경
            let priceFormat = numberFormatter.string(from: instances.productData.sideMenu[menuNum - 1].price as NSNumber) ?? ""
            print("\n\n[ 현재 메뉴 정보 ]\n")
            print("\n이름 : \(instances.productData.sideMenu[menuNum-1].name)\n가격 : \(priceFormat)원")
            print("\n수정할 메뉴 이름을 입력하세요.\n(공백 불가, 영어와 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newName = getName()
            print("\n수정할 메뉴 가격을 입력하세요\n(공백 불가, 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.sideMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.sideMenu[menuNum - 1].price = newPrice
            }
            print("변경이 완료 됐습니다\n\n")
        case 4:
            print("\n\n[ 음료 메뉴 수정 화면 ]\n")
            showMenu(instances.productData.drinkMenu)
            print("\n===============================")
            let menuNum = instances.functions.getInt(instances.productData.drinkMenu.count)
            let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        
                        // 지폐 단위로 가격 변경
            let priceFormat = numberFormatter.string(from: instances.productData.drinkMenu[menuNum - 1].price as NSNumber) ?? ""
            print("\n\n[ 현재 메뉴 정보 ]\n")
            print("\n이름 : \(instances.productData.drinkMenu[menuNum-1].name)\n가격 : \(priceFormat)원 ")
            print("\n수정할 메뉴 이름을 입력하세요.\n(공백 불가, 영어와 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newName = getName()
            print("\n수정할 메뉴 가격을 입력하세요\n(공백 불가, 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.drinkMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.drinkMenu[menuNum - 1].price = newPrice
            }
            print("변경이 완료 됐습니다\n\n")
        case 5:
            print("\n\n[ 피클&소스 메뉴 수정 화면 ]\n")
            showMenu(instances.productData.pickkleMenu)
            print("\n===============================")
            let menuNum = instances.functions.getInt(instances.productData.pickkleMenu.count)
            let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        
                        // 지폐 단위로 가격 변경
            let priceFormat = numberFormatter.string(from: instances.productData.pickkleMenu[menuNum - 1].price as NSNumber) ?? ""
            print("\n\n[ 현재 메뉴 정보 ]\n")
            print("\n이름 : \(instances.productData.pickkleMenu[menuNum-1].name)\n가격 : \(priceFormat)원")
            print("\n수정할 메뉴 이름을 입력하세요.\n(공백 불가, 영어와 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newName = getName()
            print("\n수정할 메뉴 가격을 입력하세요\n(공백 불가, 정수만 입력 가능)")
            print("\n===============================")
            print("", terminator: "  >>  ")
            let newPrice = getPrice()
            if newName != "" {
                instances.productData.pickkleMenu[menuNum - 1].name = newName
            }
            if newPrice != -1 {
                instances.productData.pickkleMenu[menuNum - 1].price = newPrice
            }
            print("변경이 완료 됐습니다")
        default: instances.categories.category(instances.productData.homeMenu)
        }
        
        instances.operating.oper(.home)
        return
    }
}
