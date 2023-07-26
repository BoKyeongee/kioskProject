//
//  Basket.swift
//  team4work
//
//  Created by 김지은 on 2023/07/26.
//

import Foundation

class Basket {
    var shopping: [String : Double] = [:]
    
    func shoppingBaskset(pick: String, price: Double) {
        shopping[pick] = price
        print(shopping)
    }
}
