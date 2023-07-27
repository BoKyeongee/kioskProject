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
    
    static let homeSetArray = [pizza, pasta, side, drink, pickkle, admin, exit]
    static let foodSetArray = [food, home, exit]
    static let cartSetArray = [checkout, home, clearCart, exit]
        
}

class Operator {
    func oper(_ input: Set) {
        
        switch input {
        // 기본 메뉴
//        case .checkout : instances.checkout.checkout()
        case .admin : instances.admin.admin()
        case .home: instances.toHome.home()
        case .clearCart :
            instances.functions.cartContent = [[]]
            instances.functions.cart([[]])
        case .exit : instances.functions.exit()
        case .orderComplete :
            print("주문이 완료되었습니다.")
            return
            
        // 카테고리
        case .drink : instances.drinkMenu.drink()
        case .side : instances.sideMenu.side()
        case .pizza :instances.pizzaMenu.pizza()
        case .pasta : instances.pastaMenu.pasta()
        case .pickkle : instances.pickkleMenu.pickkle()
            
        // 주문


        default : instances.toHome.home()
        }
    }
}
