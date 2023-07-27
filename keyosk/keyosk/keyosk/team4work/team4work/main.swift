//
//  main.swift
//  team4work
//
//  Created by t2023-m0081 on 2023/07/25.
//

import Foundation

// 음료 메뉴판 아웃라인
class DrinkMainMenu {
    let menuOutLineTop: String = "------------------< D r i n k >------------------"
    let blank: String = "     "
    let menuCategoriesTag1: String = "[List]"
    let menuCategoriesTag2: String = "[price : $]"
    let menuOutLineBottom: String = "-------------------------------------------------"
    
    
    func showMenu() {
            print(menuOutLineTop)
            // print(blankShort, menuCategoriesTag1, blankLong, menuCategoriesTag2)
            print(blank)
            print("       \(menuCategoriesTag1)                      \(menuCategoriesTag2)")
            print(blank)
        for drink in DrinkCategories.DrinkName.allCases { // 수정된 부분
            let drinkNum = drink.number()
            let drinkName = drink.eachDrink()
            let drinkPrice = drink.drinkPrice()
            print(" \(drinkNum). \(drinkName)      ....................\(drinkPrice)          ")
        }
            print(menuOutLineBottom)
        }
    }

//쇼미더메뉴판
var mainMenu = DrinkMainMenu()
mainMenu.showMenu()

    

//음료수 종류 만들어보기!
class DrinkCategories {
    
    enum DrinkName :CaseIterable{
        case coca
        case pepsi
        case fanta
        case orangina
        case newdrink
        
        func number() -> Int {
            switch self{
            case .coca:
                return 1
            case .pepsi:
                return 2
            case .fanta :
                return 3
            case .orangina :
                return 4
            case . newdrink :
                return 5
            }
        }
        func eachDrink() -> String {
            switch self {
            case .coca:
                return "  Coca-Cola "
            case .pepsi:
                return " Pepsi-Cola "
            case .fanta:
                return "    Fanta   "
            case .orangina:
                return "  Orangina  "
            case .newdrink:
                return "  New Drink "
            default:
                break
            }
        }
        
        func drinkPrice() -> Double {
            switch self {
            case .coca:
                return 3
            case .pepsi:
                return 2.5
            case .fanta:
                return 2
            case .orangina:
                return 3
            case .newdrink:
                return 0

            default:
                break
                
               
            }
        }
    }
}

