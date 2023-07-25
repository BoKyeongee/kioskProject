import Foundation
class Menu {
    var name : String
    var price : Int
    init(name : String, price : Int ){
        self.name = name
        self.price = price
    }
    func displayInfo(){
    }
}
class Pizza : Menu {

}
class Icecream : Menu {
    
}
