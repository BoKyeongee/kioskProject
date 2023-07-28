//
//  MenuInfo.swift
//  kiosk
//
//  Created by 남보경 on 2023/07/27.
//

import Foundation

class MenuInfo {
    var pizzaMenu : [Menu] = [
        Menu("치즈 크레이프 샌드 피자", 34900, .food),
        Menu("아보카도 새우 피자", 27900, .food),
        Menu("대만 콘 치즈 감자 피자", 17900, .food),
        Menu("이탈리아 마르게리따 피자", 17900, .food)
    ]
    
    var pastaMenu : [Menu] = [
        Menu("불고기 파스타", 8800, .food),
        Menu("치즈 볼로네즈 파스타", 9800, .food),
        Menu("치킨 볼 파스타", 9800, .food),
        Menu("베이컨 파스타", 8800, .food)
    ]
    
    var sideMenu : [Menu] = [
        Menu("치킨 체다 더티 프라이즈", 4600, .food),
        Menu("체다 치즈 치킨", 9800, .food),
        Menu("웨스턴 핫 윙(8조각)", 9800, .food),
        Menu("허니&갈릭 윙스", 5600, .food),
        Menu("도미노 코울슬로", 9800, .food)
    ]
    
    var drinkMenu : [Menu] = [
        Menu("메뉴1", 100, .food),
        Menu("메뉴2", 100, .food),
        Menu("메뉴3", 100, .food),
        Menu("메뉴4", 100, .food),
        Menu("메뉴15", 100, .food)
    ]
    
    var pickkleMenu : [Menu] = [
        Menu("우리피클 M", 500, .food),
        Menu("우리피클 L", 800, .food),
        Menu("갈릭디핑소스", 200, .food),
        Menu("핫소스", 100, .food),
    ]
    
    var homeMenu : [Menu] = [
        Menu("PIZZA", 0, .pizza),
        Menu("PASTA", 0, .pasta),
        Menu("SIDE", 0, .side),
        Menu("DRINK", 0, .drink),
        Menu("PICKKLE", 0, .pickkle),
        Menu("ADMIN", 0, .admin),
        Menu("QUIT", 0, .exit)
    ]
    
    var cartMenu: [Menu] = [
        Menu("CHECK OUT", 0, .checkout),
        Menu("HOME", 0, .home),
        Menu("CLEAR CART", 0, .clearCart),
        Menu("QUIT", 0, .exit)
    ]
    
    var emptyCartMenu: [Menu] = [
        Menu("HOME", 0, .home),
        Menu("QUIT", 0, .exit)
    ]
}
