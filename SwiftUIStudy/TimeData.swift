//
//  TimeData.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2022/03/01.
//

import Foundation
import Combine

class TimeData: ObservableObject {
    @Published var timeCount = 0
    
    weak var timer: Timer?
    
    init() {
        startTimer()
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: true)
    }
    
    private func resetTimer() {
        if timer?.isValid == true {
            timer?.invalidate()
            timer = nil
        }
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        resetTimer()
        timeCount = 0
        startTimer()
    }
}
