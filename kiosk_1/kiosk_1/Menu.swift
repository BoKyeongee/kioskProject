//
//  Menu.swift
//  keyosk
//
//  Created by 보경 on 2023/07/27.
//

import Foundation


class Menu {
    var name : String
    var price : Int
    var set : Set
    
    init(_ name: String, _ price: Int, _ set: Set) {
        self.name = name
        self.price = price
        self.set = set
    }
}

class Categories : Functions {
    func category(_ menulist: [Menu]){
        displayMenu(menulist)
    }
}
