//
//  PastaMenu.swift
//  Pasta
//
//  Created by APPLE M1 Max on 2023/07/26.
//

import Foundation

enum PastaName: String, Codable, CaseIterable {
    
    case bulgogipasta = "Bulgogi Pasta"
    case cheesepasta = "Cheese Pasta"
    case chickenbowlPasta = "Chicken Bowl Pasta"
    case baconpasta = "Bacon Pasta"
    
}

struct Order: Codable {
    
    let number: String
    let PastaName: PastaName
    let total: Float
    
    var menuNumber = [""]
    
}
    
// 구체적으로 코드 작성해야 함.
