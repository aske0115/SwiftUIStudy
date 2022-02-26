//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2021/12/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var colors: [Color] = [.black, .red, .green, .blue, .pink]
    var colorNames = ["Black","Red","Green","Blue","Pink"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            VStack {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(self.rotation))
                    .animation(.easeInOut(duration: 3), value: rotation)
                    .foregroundColor(self.colors[colorIndex])
                Slider(value: $rotation, in: 0...360, step: 0.1)
                TextField("Enter text here", text:$text)
                    .textFieldStyle(.roundedBorder)
                   
                Picker(selection: $colorIndex, label: Text("Color")) {
                    ForEach (0..<colorNames.count) {
                        Text(self.colorNames[$0])
                            .foregroundColor(self.colors[$0])
                    }
                }
                .foregroundColor(Color("AccentColor"))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
