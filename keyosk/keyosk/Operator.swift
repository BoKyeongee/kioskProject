//
//  Setting.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

enum Set{
    // 기본 화면 및 기능
    case home, pick, cart, checkout, admin, exit, clearCart
    
    // 카테고리
    case pikklesAndSauces, pizza, pasta, drink, side
    
    // 피클 & 소스 메뉴
    case pikkleM, pikkleL, garlicDip, hotSauce

}

class Operator {
    func oper(_ input: Set) {
        
        switch input {
        // 기본 메뉴
        case .pick : instances.picking.pick()
        case .cart : instances.cart.cart()
        case .checkout : instances.checkout.checkout()
        case .admin : instances.administration.admin()
        case .home: instances.toHome.home()
        case .clearCart : instances.cart.cartContent = [:]
        case .exit : instances.exit.exit()
            
        // 카테고리
        case .pikklesAndSauces : instances.pns.pns()

        default : instances.toHome.home()
        }
    }
}
