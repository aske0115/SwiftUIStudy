//
//  SwiftUIStudyApp.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2021/12/25.
//

import SwiftUI
import Combine
@main
struct SwiftUIStudyApp: App {
    
    let timerData = TimeData()
    
    var body: some Scene {
        WindowGroup {
            AlignmentGuideView().environmentObject(timerData)
        }
    }
}
