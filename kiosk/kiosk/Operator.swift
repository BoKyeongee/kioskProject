//
//  Setting.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

enum Set{
    // 기본 화면 및 기능
    case home, checkout, admin, exit, clearCart
    
    // 카테고리
    case pickkle, pizza, pasta, drink, side
    
    // food
    case food
}

class Operator {
    func oper(_ input: Set) {
        
        switch input {
        // 기본 메뉴
        case .checkout : // 구매
            instances.checkout.checkout()
        case .admin : // 관리자
            instances.toAdmin.admin()
        case .home: // 홈
            print("\n\n============WELCOME============\n\n[ DOMINO PIZZA | HOME ]\n")
            instances.categories.category(instances.productData.homeMenu)
        case .clearCart : // 카트 비우기
            instances.functions.cartContent = []
            instances.functions.viewCart(instances.functions.cartContent)
        case .exit : // 종료
            instances.functions.exit()
        // 카테고리
        case .drink : // 음료
            print("\n\n\n[DRINK MENU]\n")
            instances.categories.category(instances.productData.drinkMenu)

        case .side : // 사이드
            print("\n\n\n[SIDE MENU]\n")
            instances.categories.category(instances.productData.sideMenu)

        case .pizza : // 피자
            print("\n\n\n[PIZZA MENU]\n")
            instances.categories.category(instances.productData.pizzaMenu)

        case .pasta : // 파스타
            print("\n\n\n[PASTA MENU]\n")
            instances.categories.category(instances.productData.pastaMenu)

        case .pickkle : // 피클
            print("\n\n\n[PICKKLE MENU]\n")
            instances.categories.category(instances.productData.pickkleMenu)
            

        default : // 홈
            instances.categories.category(instances.productData.homeMenu)
        }
    }
    
   
}
