//
//  timeNormalizer.swift
//  CordingTest
//
//  Created by 石澤大輔 on 2021/06/28.
//

import Foundation

class timeNormalizer {
    var startTime: Int
    var endTime: Int
    var selectTime: Int
    
    init(start: Int, end: Int, select: Int){
        self.startTime = start
        self.endTime = end
        self.selectTime = select
    }
    
//    時間の正当化
//    範囲：20〜5時、指定時刻：3時　-> 範囲：20〜29時、指定時刻：27時のようにする
    func normalizer() {
        
//        指定された時間範囲の終了時刻が次の日になっていた場合
        if startTime > endTime {
//            範囲が20〜5の時などに、指定された時間が0〜5の時
            if 0 < selectTime && selectTime < endTime {
                selectTime += 24
            }
            endTime += 24
        }
    }
    
//    含まれているかどうかをチェックする
    func containJudge() -> Bool {
        self.normalizer()
        
        if startTime != endTime {   /* 指定された時間の範囲が異なる場合 */
            if startTime <= selectTime && selectTime < endTime {    /* 開始〜終了時刻の間の場合 */
                return true
            } else {
                return false
            }
        } else {
            if selectTime == startTime {    /* 指定された時間の範囲が同刻の場合 */
                return true
            } else {
                return false
            }
        }
    }

}
