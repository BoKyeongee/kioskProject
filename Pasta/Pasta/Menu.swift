//
//  ContentView.swift
//  Pasta
//
//  Created by APPLE M1 Max on 2023/07/25.
//

import Foundation

class Menu {
    var dominoMenu = ["Pizza", "Side", "Pasta", "Drinks", "Pickle&Sauce", "Exit"]
    
    init(dominoMenu: [String] = ["Pizza", "Side", "Pasta", "Drinks", "Pickle&Sauce", "Exit"])
    {
        self.dominoMenu = dominoMenu
    }

func callMenu() -> String {
    for (index, value) in dominoMenu.enumerated(){
        if value != "Exit" {
            dominoMenu[index] = "\(index + 1). \(value)"
        } else {
            dominoMenu[index] = "\(0). \(value)"
        }
    }

    let menu = """
    "Welcome to DOMINO'S PIZZA."
    Please look at the menu below and enter the menu.

    [ DOMINO'S MENU ]
    \(dominoMenu.joined(separator: "\n"))
    """
    return menu
   }
}
