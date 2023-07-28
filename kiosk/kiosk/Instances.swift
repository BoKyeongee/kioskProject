//
//  File.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Instances {
    
    // 구동에 필요
    let main = Main()
    let operating = Operator()
    
    // 기본 메뉴
//    let checkout = Checkout()
    let toAdmin = Admin()
    
    // 기능 접근 시
    let functions = Functions()
    
    // 메뉴 리스트 접근 시
    let productData = MenuInfo()
    
    // 상세 메뉴
    let categories = Categories()
    
}
