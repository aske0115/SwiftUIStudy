//
//  SecondView.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2022/03/01.
//

import SwiftUI
import Combine

struct SecondView: View {
    
    @ObservedObject var timeData: TimeData
    
    var body: some View {
        VStack() {
            Text("Second View")
                .font(.largeTitle)
            Text("timer Count = \(timeData.timeCount)")
                .font(.title)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timeData: TimeData())
    }
}
