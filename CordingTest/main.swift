//
//  main.swift
//  CordingTest
//
//  Created by 石澤大輔 on 2021/06/28.
//

import Foundation

import Foundation

var inputMenu: Int?
var inputStartTime: Int?
var inputEndTime: Int?
var inputSelectTime: Int?
let illegalNumber: Int = 1000
var exitFlag: Bool = false

let Printer = printer()
let Checker = checker()


while true {
    while true {
//        メニュー番号の入力
        Printer.inputMenuPrint()
        inputMenu = Int(readLine()!)
        
//        0か1が入力されているか
        if Checker.isIntChecker(input: inputMenu) && Checker.isZeroorOneChecker(input: inputMenu) {
            break
        } else {
            Printer.inputMenuErrorPrint()
        }
    }
    
    switch (inputMenu) {
    case 0:
//        プログラムの終了を伝える
        Printer.endPrint()

    case 1:
        while true {
//            エラーが出た時にbreakするためのフラグの初期化
            exitFlag = false
            
    //        開始時刻、終了時刻、指定時刻を入力してもらう（readLine()はStringのため、Intに強制キャスト）
            Printer.inputTimePrint(time: "開始時刻")
            inputStartTime = Int(readLine()!)
            Printer.inputTimePrint(time: "終了時刻")
            inputEndTime = Int(readLine()!)
            Printer.inputTimePrint(time: "指定する時刻")
            inputSelectTime = Int(readLine()!)
            
    //        nilが入っていた場合、0〜23の範囲外であるillegalNumber(1000)を代入
            if !Checker.isIntChecker(input: inputStartTime) {
                inputStartTime = illegalNumber
                exitFlag = true
            }
            if !Checker.isIntChecker(input: inputEndTime) {
                inputEndTime = illegalNumber
                exitFlag = true
            }
            if !Checker.isIntChecker(input: inputSelectTime) {
                inputSelectTime = illegalNumber
                exitFlag = true
            }

    //        入力された時刻全てが0〜23の範囲に入っているか
            if Checker.isTimeChecker(time: inputStartTime!) && Checker.isTimeChecker(time: inputEndTime!) && Checker.isTimeChecker(time: inputSelectTime!) {
                break
            } else {
    //            範囲外の時エラー文を表示
                Printer.inputTimeErrorPrint()
                exitFlag = true
                break
            }
        }

//        エラーが出た時にbreak
        if exitFlag { break }
        
        let normalizer = timeNormalizer(start: inputStartTime!, end: inputEndTime!, select: inputSelectTime!)
        
    //    normalizerで開始〜終了時刻の間にあるかを調べ、結果に合わせて文を表示する
        Printer.judgedTimePrint(judged: normalizer.containJudge())

    default:
        break
    }
    
    if inputMenu == 0 { break } /* プログラムの終了が入力された場合、そのままbreakして終了 */
}
