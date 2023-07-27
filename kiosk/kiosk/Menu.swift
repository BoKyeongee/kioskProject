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
    
    init(_ name: String, _ price: Int) {
        self.name = name
        self.price = price
    }
}


class Pizza : Functions {
    func pizza() {
        let pizzaMenu : [Menu] = instances.productData.pizzaMenu
        print("\n\n\n[PIZZA MENU]\n")
        let numSet = makeNumSet(pizzaMenu, Set.foodSetArray)
        displayDetail(numSet, pizzaMenu)
        let inputNum = numChoice(Set.foodSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
        
    }
}

class Pasta : Functions {
    func pasta() {
        let pastaMenu : [Menu] = instances.productData.pastaMenu
        print("\n\n\n[PASTA MENU]\n")
        let numSet = makeNumSet(pastaMenu, Set.foodSetArray)
        displayDetail(numSet, pastaMenu)
        let inputNum = numChoice(Set.foodSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
    }
}

class Side : Functions {
    func side() {
        let sideMenu : [Menu] = instances.productData.sideMenu
        print("\n\n\n[SIDE MENU]\n")
        let numSet = makeNumSet(sideMenu, Set.foodSetArray)
        displayDetail(numSet, sideMenu)
        let inputNum = numChoice(Set.foodSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
    }
}

class Drink : Functions {
    func drink() {
        let drinkMenu : [Menu] = instances.productData.drinkMenu
        print("\n\n\n[DRINK MENU]\n")
        let numSet = makeNumSet(drinkMenu, Set.foodSetArray)
        displayDetail(numSet, drinkMenu)
        let inputNum = numChoice(Set.foodSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
    }
}

class Pickkle : Functions {
    func pickkle() {
        let pickkleMenu : [Menu] = instances.productData.pickkleMenu
        print("\n\n\n[PICKKLE MENU]\n")
        let numSet = makeNumSet(pickkleMenu, Set.foodSetArray)
        displayDetail(numSet, pickkleMenu)
        let inputNum = numChoice(Set.foodSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
    }
}

class Home : Functions {
    func home() {
        let homeMenu:[Menu] = instances.productData.homeMenu
        print("\n\n\n-----------------<  W E L C O M E  >-----------------\n[ DOMINO MENU ]\n")
        let numSet = makeNumSet(homeMenu, Set.homeSetArray)
        displayHome(numSet)
        let inputNum = numChoice(Set.homeSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        
        return
    }
}


