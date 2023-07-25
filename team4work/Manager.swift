import Foundation
var password = "0000"
func changePassword () {
    print("비밀번호를 입력하세요")
    var pw = getString()
    if pw.elementsEqual(password) {
        print("변경할 비밀번호를 입력하세요")
        var newpw = getString()
        password = newpw
    }
    else {
        print("비밀번호가 올바르지 않습니다.")
    }
    
}
func menuManager () {
    print("1. 피자 메뉴관리")
    print("9. 비밀번호 변경하기")
    print("0. 돌아가기")
    var page = getInt()
    switch page {
    case 0:
        break
    case 1:
        print("1. 메뉴 수정하기")
        print("2. 메뉴 추가하기")
        var select = getInt()
        if select == 1 {
            showPizza()
            var index = getInt() - 1
            print("이름 : \(pizzalist[index].name) 가격 : \(pizzalist[index].price)")
            print("변경할 이름 (입력하지 않을 시 변경되지 않습니다.")
            var name = getString()
            print("변경할 가격 (입력하지 않을 시 변경되지 않습니다.")
            var price = getInt()
            if name != "" {
                pizzalist[index].name = name
            }
            if price != -1 {
                pizzalist[index].price = price
            }
        }
        else if select == 2 {
            print("추가할 메뉴의 이름을 입력해주세요")
            var name = getString()
            print("메뉴의 가격을 입력해주세요")
            var price = getInt()
            pizzalist.append(Pizza(name: name, price: price))
        }
    case 9:
        changePassword()
    default:
        break
    }
    
}

