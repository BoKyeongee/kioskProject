//
//  MenuInfo.swift
//  kiosk
//
//  Created by 남보경 on 2023/07/27.
//

import Foundation

class MenuInfo {
    var pizzaMenu : [Menu] = [
        Menu("치즈 크레이프 샌드 피자", 34900),
        Menu("아보카도 새우 피자", 27900),
        Menu("대만 콘 치즈 감자 피자", 17900),
        Menu("이탈리아 마르게리따 피자", 17900)
    ]
    
    var pastaMenu : [Menu] = [
        Menu("불고기 파스타", 8800),
        Menu("치즈 볼로네즈 파스타", 9800),
        Menu("치킨 볼 파스타", 9800),
        Menu("베이컨 파스타", 8800)
    ]
    
    var sideMenu : [Menu] = [
        Menu("치킨 체다 더티 프라이즈", 4600),
        Menu("체다 치즈 치킨", 9800),
        Menu("웨스턴 핫 윙(8조각)", 9800),
        Menu("허니&갈릭 윙스", 5600),
        Menu("도미노 코울슬로", 9800)
    ]
    
    var drinkMenu : [Menu] = [
        Menu("메뉴1", 100),
        Menu("메뉴2", 100),
        Menu("메뉴3", 100),
        Menu("메뉴4", 100),
        Menu("메뉴15", 100)
    ]
    
    var pickkleMenu : [Menu] = [
        Menu("우리피클 M", 500),
        Menu("우리피클 L", 800),
        Menu("갈릭디핑소스", 200),
        Menu("핫소스", 100),
    ]
    
    var homeMenu : [Menu] = [
        Menu("PIZZA", 0),
        Menu("PASTA", 0),
        Menu("SIDE", 0),
        Menu("DRINK", 0),
        Menu("PICKKLE", 0),
        Menu("ADMIN", 0)
    ]
    
    var cartMenu: [Menu] = [
        Menu("결제하러 가기", 0),
        Menu("홈으로 가기", 0),
        Menu("장바구니 비우기", 0),
        Menu("종료", 0)
    ]
}
