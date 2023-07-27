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
    
    // 입력되는 숫자에 Set값을 배치하는 딕셔너리 생성
    func makeNumSet(_ menulist: [Menu], _ setlist: [Set]) -> [Int: Set] {
        var numSet: [Int: Set] = [:]
        // 홈 화면 or 장바구니 화면일 때 guard 지나침
        guard setlist[0] != .food else{
            //상세 화면
            for i in 1 ... menulist.count {numSet[i] = .food}
            numSet[menulist.count + 1] = .home
            numSet[menulist.count + 2] = .exit
            return numSet
        }
        for i in 1 ... menulist.count {numSet[i] = setlist[i - 1]}
        return numSet
    }
    
    // 숫자 입력받고 옵셔널 처리
    func numChoice(_ menuNum: Int) -> Int{
        print("\n숫자를 입력해주세요", terminator: " >> ")
        let range = 1...menuNum
        var n: Int = Int(readLine()!) ?? 404
        
        // 에러코드가 뜨는 경우 맞는 값이 입력될 때 까지 반복
        while range.contains(n) == false {
            print("\n잘못된 값이 입력 됐습니다.\n올바른 숫자를 다시 입력하세요.", terminator: " >> ")
            n = Int(readLine()!) ?? 404
            if range.contains(n) == true {return n}
        }
        return n
    }
    

    func displayHome(_ numSet: [Int : Set]) {
        // 홈 메뉴 그리기
        let menulist: [Menu] = instances.productData.homeMenu
        for i in 0..<menulist.count {
            print("| \(i + 1) |   \(menulist[i].name)")
        }
        print("---------------------------------", separator: "", terminator: "\n >> ")
        let choicedNum: Int = numChoice(menulist.count) // 숫자 받기
        let numToSet: Set = numSet[choicedNum]! // 받은 숫자를 Set값으로 변경
        instances.operating.oper(numToSet) // Set값으로 oper()속의 switch문 실행
        return
    }
    
    func displayCart(_ numSet: [Int : Set]) {
        // 장바구니 메뉴 그리기
        let menulist: [Menu] = instances.productData.cartMenu
        for i in 0..<menulist.count {
            print("| \(i + 1) |   \(menulist[i].name)")
        }
        print("---------------------------------", separator: "", terminator: "\n >> ")
        let choicedNum: Int = numChoice(menulist.count) // 숫자 받기
        let numToSet: Set = numSet[choicedNum]! // 받은 숫자를 Set값으로 변경
        instances.operating.oper(numToSet) // Set값으로 oper()속의 switch문 실행
        return
    }
    
    
    // 세부 메뉴 그리기
    func displayDetail(_ numSet: [Int : Set],_ menulist: [Menu]) {
        for i in 0..<menulist.count {
            print("| \(i + 1) |   \(menulist[i].name)")
        }
        print("\n | \(menulist.count) |   HOME MENU\n\(menulist.count + 1) |   QUIT")
        print("---------------------------------", separator: "", terminator: "\n >> ")
        let choicedNum: Int = numChoice(menulist.count) // 숫자 받기
        let menuName: String = menulist[choicedNum - 1].name
        let menuPrice: Int = menulist[choicedNum - 1].price
        let cartContent = order(menuName, menuPrice)
        cart(cartContent)
        return
    }
    
    
    
    var cartContent: [[Any]] = [[]] // 내용 유지 위해 함수 밖에 선언
    func order(_ menuName: String, _ menuPrice: Int) -> [[Any]]{
        print("\n[ ADD TO CART ]\n")
        print("\(menuName)를 몇 개 구매하시겠습니까?")
        let menuCount: Int = numChoice(999)//stock
        let cost: Int = menuPrice * menuCount
        
        var i: Int = 0
        while i < cartContent.count {
            if cartContent[i][0] as! String == menuName{
                cartContent[i] = [menuName, cartContent[i][1] as! Int + menuCount, cartContent[i][2] as! Int + cost]
            }
            else{
                cartContent.append([menuName, menuCount, cost])
                break
            }
            i += 1
        }
        return cartContent
    }
    
    func cart(_ cartContent: [[Any]]) {
        print("\n\n[ CART ]\n")
        var total: Int = 0
        for i in 0..<cartContent.count {
            print("상품명: \(cartContent[i][0])  |   수량: \(cartContent[i][1])  |   가격: \(cartContent[i][2])")
            total += cartContent[i][2] as! Int
        }
        print("================================", separator: "", terminator: "\n >> ")
        let numSet = makeNumSet(instances.productData.cartMenu, Set.cartSetArray)
        displayCart(numSet)
        let inputNum = numChoice(Set.cartSetArray.count)
        let numToSet = numSet[inputNum]!
        instances.operating.oper(numToSet)
        return
    }
   
}
