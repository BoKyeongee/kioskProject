//
//  main.swift
//  team4work
//
//  Created by t2023-m0081 on 2023/07/25.
//
//
import Foundation

//3 엔터 콘솔에 하면 드링크 나오게하고싶은대 어렵다 ;ㅅ;
var mainMenu = DrinkMenu()
mainMenu.showDrinkMenu()



class MainShopMenu{
    var menuOutLineTop: String = "------------------<  M  E  N  U  >------------------"
    let blank: String = "     "
    var menuCategoriesTag1: String = "[List]"
    //let menuCategoriesTag2: String = "[price : $]"
    var menuOutLineBottom: String = "----------------------------------------------------"

    func showMainShopMenu () {
        print(menuOutLineTop)
        print(blank)
        print("       \(menuCategoriesTag1)")
        print(blank)
        for MainShopFood in MainShopCategories.foodCategories.allCases{
            let foodnum = MainShopFood.number()
            let foodEach = MainShopFood.eachFood()
            print(" \(foodnum)  \(foodEach)")
        }
        print(menuOutLineBottom)
    }
}

let showShopMenu = MainShopMenu()
showShopMenu.showMainShopMenu()

class MainShopCategories {

    enum foodCategories :CaseIterable{
        case pizza
        case pasta
        case drinks
        case sauce
        case etc

        func number() -> Int {
            switch self{
            case .pizza:
                return 1
            case .pasta:
                return 2
            case .drinks :
                return 3
            case .sauce :
                return 4
            case . etc :
                return 5
            }
        }
        func eachFood() -> String {
            switch self {
            case .pizza:
                return "  P I Z Z A "
            case .pasta:
                return "  P A S T A "
            case .drinks:
                return "  D R I N K "
            case .sauce:
                return "  S A U C E "
            case .etc:
                return "   E  T  C  "
            default:
                break
            }
        }
    }
}






//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ//
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ//
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ//




///옵셔널연습
///
//class Choice{
//    func myChoice() {
//
//
//        if let name = readLine() {
//
//            print("")
//        } else {
//
//            print("no")
//        }
//    }
//}
//var selectChoice = Choice()
//selectChoice.myChoice()


