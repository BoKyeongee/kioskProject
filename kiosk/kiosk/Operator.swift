//
//  Setting.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

enum Set{
    // 기본 화면 및 기능
    case home, checkout, admin, exit, clearCart, orderComplete
    
    // 카테고리
    case pickkle, pizza, pasta, drink, side
    
    // food
    case food
}

class Operator {
    func oper(_ input: Set) {
        
        switch input {
        // 기본 메뉴
//        case .checkout : instances.checkout.checkout()
        case .admin : instances.toAdmin.admin()
        case .home:
            print("\n\n============WELCOME============\n\n[ DOMINO PIZZA | HOME ]\n")
            instances.categories.category(instances.productData.homeMenu)
        case .clearCart :
            instances.functions.cartContent = []
            instances.functions.viewCart(instances.functions.cartContent)
        case .exit : instances.functions.exit()
        case .orderComplete :
            print("주문이 완료되었습니다.")
            return
            
        // 카테고리
        case .drink :
            print("\n\n\n[DRINK MENU]\n")
            instances.categories.category(instances.productData.drinkMenu)

        case .side :
            print("\n\n\n[SIDE MENU]\n")
            instances.categories.category(instances.productData.sideMenu)

        case .pizza :
            print("\n\n\n[PIZZA MENU]\n")
            instances.categories.category(instances.productData.pizzaMenu)

        case .pasta :
            print("\n\n\n[PASTA MENU]\n")
            instances.categories.category(instances.productData.pastaMenu)

        case .pickkle :
            print("\n\n\n[PICKKLE MENU]\n")
            instances.categories.category(instances.productData.pickkleMenu)
            

        default : instances.categories.category(instances.productData.homeMenu)
        }
    }
    
   
}
