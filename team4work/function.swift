import Foundation
func showMain () {
    print("[ DOMINO PIZZA'S MENU ]")
    print("1. Pizzas")
    print("5. 장바구니 보기")
    print("6. 주문하기")
    print("9. 관리자 메뉴")
    print("0. 종료")
    print("원하는 메뉴의 번호를 입력하세요")
}
func showPizza () {
    print("[ Pizzas MENU ]")
    for i in 0..<pizzalist.count{
        print("\(i+1). \(pizzalist[i].name) \(pizzalist[i].price)")
    }
    print("0. 뒤로가기")
    
}
func getInt () -> Int {
    var value : Int
    if let x = Int(readLine()!) {
        value = x
    }
    else {
        value = -1
    }
    return value
}
func getString () -> String {
    var value : String
    if let x = readLine() {
        value = x
    }
    else {
        value = ""
    }
    return value
}

