//
//  main.swift
//  team4work
//
//  Created by t2023-m0081 on 2023/07/25.
//

import Foundation

print(Menu().callMenu())
let input = readLine()!
Main().inputRead(input: Int(input)!)

class Main {
    func inputRead(input: Int) {
        switch input {
        case 1:
            break
        case 2:
            print(Side().callSideMenu())
        case 3:
            break
        case 4:
            break
        case 5:
            break
        case 0:
            exit(0)
        default:
            while true {
                print("잘못된 번호를 입력했어요 다시 입력해주세요.")
                let input = readLine()!
                if Int(input)! < 6 && Int(input)! > -1 {
                    inputRead(input: Int(input)!)
                    break
                }
            }
        }
    }
}

