//
//  Buy.swift
//  team4work
//
//  Created by 김지은 on 2023/07/26.
//

import Foundation

class Buy {
    func buyBasket(){
        print("""
아래와 같이 주문 하시겠습니까?

[ Orders ]
\(Basket().shopping)

[ Total ]
\(Basket().shopping.values)

1. 주문      2. 메뉴판
""")
    }
}
