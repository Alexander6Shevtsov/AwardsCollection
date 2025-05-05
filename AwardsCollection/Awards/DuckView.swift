//
//  AnimationForDuck.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 03.05.2025.
//

import SwiftUI

struct DuckView: View {
    @State private var move = false
    @State private var swing = false
    @State private var direction = false
    
    var body: some View {
        ZStack {
            DuckView()
                .offset(x: 320, y: 320)
                .scaleEffect(x: direction ? -1 : 1)
                .rotationEffect(
                    .degrees(swing ? -5 : 5),
                    anchor: swing ? .bottomLeading : .bottomTrailing
                )
            
            Image("wave")
                .offset(y: 85)
                .offset(x: move ? -310 : 310)
                .scaleEffect(2)
                .opacity(0.6)
            
            Image("wave")
                .offset(y: 90)
                .scaleEffect(2)
                .offset(x: move ? -300 : 300)
                .task {
                    withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                        swing.toggle()
                    }
                    
                    withAnimation(.easeInOut(duration: 4).speed(0.35).repeatForever()) {
                        move.toggle()
                    }
                    
                    withAnimation(.easeInOut.delay(12).repeatForever(autoreverses: true)) {
                        direction.toggle()
                    }
                }
        }
    }
}

#Preview {
    DuckView()
}
