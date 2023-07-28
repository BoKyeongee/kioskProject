//
//  MenuInfo.swift
//  kiosk
//
//  Created by 남보경 on 2023/07/27.
//

import Foundation

class MenuInfo {
    var pizzaMenu : [Menu] = [
        Menu("CHEESE CREPE SAND PIZZA", 34900, .food),
        Menu("AVOCADO SHRIMP PIZZA", 27900, .food),
        Menu("TAIWANESE CORN CHEESE POTATO PIZZA", 17900, .food),
        Menu("ITALIAN MARGHERITA PIZZA", 17900, .food)
    ]
    
    var pastaMenu : [Menu] = [
        Menu("BULGOGI PASTA", 8800, .food),
        Menu("CHEESE BOLOGNESE PASTA", 9800, .food),
        Menu("CHICKEN BOWL PASTA", 9800, .food),
        Menu("BACON PASTA", 8800, .food)
    ]
    
    var sideMenu : [Menu] = [
        Menu("CHICKEN CHEDDAR DIRTY FRIES", 4600, .food),
        Menu("CHEDDAR CHEESE CHICKEN", 9800, .food),
        Menu("WESTERN HOT WING(8pcs.)", 9800, .food),
        Menu("Honey & Garlic Wings", 5600, .food),
        Menu("Domino's Coleslaw", 9800, .food)
    ]
    
    var drinkMenu : [Menu] = [
        Menu("COCA COLA", 1500, .food),
        Menu("PEPSI", 1300, .food),
        Menu("SPRITE", 1000, .food),
        Menu("WELCHS", 1100, .food),
        Menu("WATER", 900, .food)
    ]
    
    var pickkleMenu : [Menu] = [
        Menu("WOORI PICKKLE M", 500, .food),
        Menu("WOORI PICKKLE L", 800, .food),
        Menu("GARLIC DIPPING SAUCE ", 200, .food),
        Menu("HOT SAUCE", 100, .food),
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
