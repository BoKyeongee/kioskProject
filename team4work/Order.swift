import Foundation
class Order {
    var cart : [Menu]
    init (cart : [Menu]){
        self.cart = cart
    }
    func order () {
        print("주문이 완료되었습니다!")
        cart.removeAll()
    }
    func showCart () {
        var sum = 0
        for i in 0..<cart.count {
            sum += cart[i].price
            print("이름 : \(cart[i].name) 가격 : \(cart[i].price)원")
        }
        print("합계 : \(sum)원")
    }
}
