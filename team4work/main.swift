import Foundation
var count = 0
var money = 50000
var pizzalist : [Pizza] = [Pizza(name: "치즈 크레이프 샌드", price: 34900),
                           Pizza(name: "아보카도 새우", price: 27900),
                           Pizza(name: "대만 콘 치즈 감자", price: 17900),
                           Pizza(name: "이탈리아 마르게리따", price: 17900),
]
var list : [Any] = [pizzalist]
var cart : [Menu] = []
var order = Order(cart: cart)
while(count == 0){
    
    showMain()
    var page = getInt()
    switch page {
    case 1 :
        showPizza()
        var select = getInt()
        if select == 0 {
            break;
        }
        order.cart.append(pizzalist[select - 1])
    case 5:
        order.showCart()
    case 6:
        if money >= order.cartPrice() {
            order.showCart()
            print("주문하시겠습니까?")
            print("1. Yes")
            print("2. No")
            var select = getInt()
            if select == 1 {
                order.order()
            }
        }
        else {
            print("현재 소지금액이 부족합니다. 현재 소지금액 : \(money)")
        }
    case 9 :
        print("비밀번호를 입력하세요 초기 비밀번호 = 0000")
        var pw = getString()
        if pw.elementsEqual(password) {
            menuManager()
        }
        else {
            print("비밀번호가 올바르지 않습니다.")
        }
    case 0 :
        count = -1
    default:
        print("유효한 숫자를 입력하세요.")
    }
}
print("프로그램이 종료되었습니다.")

