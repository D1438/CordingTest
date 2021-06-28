//
//  checker.swift
//  CordingTest
//
//  Created by 石澤大輔 on 2021/06/28.
//

import Foundation


class checker {
    
//    引数がnilかどうかを確認する（mainの肥大化を防ぐ）
    func isIntChecker(input: Int?) -> Bool {
        
        if input == nil {
            return false
        }
        return true
    }
    
//    0か1かどうかを確認する
    func isZeroorOneChecker(input: Int?) -> Bool {
        
        if input == 0 || input == 1 {
            return true
        }
        return false
    }
    
//    数字が同じかを確認する
    func isEqualNumberChecker(number1: Int, number2: Int) -> Bool{
        if number1 == number2 {
            return true
        }
        return false
    }
    
//    引数が0〜23の範囲かを確認する
    func isTimeChecker(time: Int) -> Bool {
        
        if 0 <= time && time < 24 {
            return true
        } else {
            return false
        }
    }
    
}
