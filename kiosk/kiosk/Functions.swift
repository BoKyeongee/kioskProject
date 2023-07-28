//
//  Functions.swift
//  kiosk
//
//  Created by 남보경 on 2023/07/27.
//

import Foundation

class Functions {
    
    // 프로그램 종료
    func exit() {
        print("프로그램을 종료합니다")
        return
    }

    // 숫자 입력받고 옵셔널 처리
    func getInt(_ menuRange: Int) -> Int{
        print("\n숫자를 입력해주세요", terminator: " >> ")
        let range = 1...menuRange
        var n: Int = Int(readLine()!) ?? 404
        
        // 에러코드가 뜨는 경우 맞는 값이 입력될 때 까지 반복
        while range.contains(n) == false {
            print("\n잘못된 값이 입력 됐습니다.\n올바른 숫자를 다시 입력하세요.", terminator: " >> ")
            n = Int(readLine()!) ?? 404
            if range.contains(n) == true {return n}
        }
        return n
    }
    

    func displayMenu(_ menulist: [Menu]) {
        // 메뉴 띄우기
        
        if menulist[0].set == .food {
            // 상세 화면
            for i in 0 ..< menulist.count {
                print(" | \(i + 1) |   \(menulist[i].name)")
            }
            print(" | \(menulist.count + 1) |   HOME MENU\n | \(menulist.count + 2) |   QUIT")
        }
        else {
            for i in 0 ..< menulist.count {
                print(" | \(i + 1) |   \(menulist[i].name)")
            }
        }
        
        print("\n===============================")
        let inputNum: Int = getInt(menulist.count) // 숫자 받기
        let setValue: Set = menulist[inputNum - 1].set // 받은 숫자를 Set값으로 변경
        
        if menulist[0].set == .food{
            order(menulist[inputNum].name, menulist[inputNum].price)
            // 상세 메뉴로 갈 경우 오더로 파라미터 전달
            return
        }
        instances.operating.oper(setValue)
        // 상세 메뉴 아닐 때, Set값으로 oper()속의 switch문 실행
        return
    }
    
    var cartContent: [[Any]] = [] // 내용 유지 위해 함수 밖에 선언
    func order(_ menuName: String, _ menuPrice: Int) {
        print("\n[ ADD TO CART ]\n")
        print("\(menuName)를 몇 개 구매하시겠습니까?")
        print("\n===============================")
        let menuCount: Int = getInt(10000) // stock 내 숫자로 개수 입력
        let cost: Int = menuPrice * menuCount // 해당 메뉴 비용 계산
        
        cartContent.append([menuName, menuCount, cost])
        
        guard cartContent.count == 1 else{
            for i in 0 ..< cartContent.count - 1 {
                if cartContent[i][0] as! String == menuName {
                    cartContent[i] = [menuName, cartContent[i][1] as! Int + menuCount, cartContent[i][2] as! Int + cost]
                    cartContent.remove(at: cartContent.count - 1)
                }
            }
            viewCart(cartContent)
            return
        }
        viewCart(cartContent)
        return
    }
    
    func viewCart(_ cartContent: [[Any]]) {
        print("\n\n[ CART ]\n")
        var total: Int = 0
        
        guard cartContent.isEmpty == false else {
            print("장바구니가 비었습니다.")
            displayMenu(instances.productData.emptyCartMenu)
            return
        }
        
        for i in 0 ..< cartContent.count {
            print("상품명: \(cartContent[i][0]) ... 수량: \(cartContent[i][1]) ... 가격: \(cartContent[i][2])\n")
            total += cartContent[i][2] as! Int
        }
        displayMenu(instances.productData.cartMenu)
        return
    }
   
}
