//
//  Select.swift
//  keyosk
//
//  Created by 보경 on 2023/07/25.
//

import Foundation

class Select{
    func numSelect() -> Int{
        print("")
        print("원하시는 메뉴를 숫자로 입력해주세요")
        var n: Int = Int(readLine()!) ?? 404
        
        // 에러코드가 뜨지 않는 경우 함수 종료되며 n값 리턴
        if n != 404 {
            return n
        }
        
        // 에러코드가 뜨는 경우 맞는 값이 입력될 때 까지 반복
        while n == 404 {
            print("잘못된 값이 입력 됐습니다")
            print("숫자만 다시 입력 해주세요")
            n = Int(readLine()!) ?? 404
        }
        
        return n
    }
}
