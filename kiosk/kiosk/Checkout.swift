//
//  Checkout.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Checkout {
    
    var cartContent: [[Any]] = []
    
    func checkout() {
        
        print("\n\n아래와 같이 주문 하시겠습니까?\n")
        
        print(instances.categories.viewCart(cartContent, typeNumb: 1)) // 카트 메뉴 보여줌
        
    }
}
