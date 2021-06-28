//
//  printer.swift
//  CordingTest
//
//  Created by 石澤大輔 on 2021/06/28.
//

import Foundation


class printer {
    
//    メニューの入力時に使う
    func inputMenuPrint() {
        print("次のメニューを選んでください。")
        print("0：プログラムを終了する。    1：入力時刻の判定を行う。")
    }
    
//    メニュー画面で入力間違いが起こった時に使う
    func inputMenuErrorPrint() {
        print("error：入力された文字は、0または1ではないか、数字ではありません。")
    }
    
//    時間入力時に使う
    func inputTimePrint(time: String) {
        print("・\(time)を入力してください。")
    }
    
//    時間入力に間違いがあったときに使う
    func inputTimeErrorPrint() {
        print("error：入力された時間のどちらか、もしくは両方が時間の範囲外であるか、数字ではありません。")
        print("error：判定プログラムを終了します。")
    }
    
//    引数がtrueとfalseに合わせて、含まれているかを表示する
    func judgedTimePrint(judged: Bool) {
        if judged {
            print("開始〜終了時刻の間に指定された時刻は含まれています。")
        } else {
            print("開始〜終了時刻の間に指定された時刻は含まれていません。")
        }
    }
    
//    プログラムの終了を表示
    func endPrint() {
        print("プログラムを終了します。")
    }
}
