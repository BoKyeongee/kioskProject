//
//  Select.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Select{
    func numSelect(_ num: Int) -> Int{
        print("\n숫자를 입력해주세요")
        let range = 1...num
        var n: Int = Int(readLine()!) ?? 404
        
        // 에러코드가 뜨는 경우 맞는 값이 입력될 때 까지 반복
        while range.contains(n) == false {
            print("""
                  잘못된 값이 입력 됐습니다.
                  올바른 숫자를 다시 입력하세요.
            """)
            n = Int(readLine()!) ?? 404
            if range.contains(n) == true {return n}
        }
        return n
    }
}
