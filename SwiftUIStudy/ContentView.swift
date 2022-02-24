//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2021/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(self.rotation))
                    .animation(.easeInOut(duration: 3), value: rotation)
                Slider(value: $rotation, in: 0...360, step: 0.1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
