//
//  BallsAnimationForGift.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 04.05.2025.
//

import SwiftUI

struct BallsAnimationForGift: View {
    @State private var size = UIScreen.main.bounds.height * 2
    @State private var rotation = 0.0
    
    var body: some View {
        let farOffset = size / 2
        let nearOffset = size / 2.8
        
        ZStack {
            BallView(color: .red)
                .offset(x: 0, y: -farOffset)
            BallView(color: .yellow)
                .offset(x: nearOffset, y: -nearOffset)
            BallView(color: .green)
                .offset(x: farOffset, y: 0)
            BallView(color: .purple)
                .offset(x: nearOffset, y: nearOffset)
            BallView(color: .blue)
                .offset(x: 0, y: farOffset)
            BallView(color: .pink)
                .offset(x: -nearOffset, y: nearOffset)
            BallView(color: .mint)
                .offset(x: -farOffset, y: 0)
            BallView(color: .orange)
                .offset(x: -nearOffset, y: -nearOffset)
        }
        .frame(width: size, height: size)
        .rotationEffect(.degrees(rotation))
        .animation(.smooth(duration: 5), value: rotation)
        .animation(.smooth(duration: 5), value: size)
        .onAppear {
            size -= size
            rotation = 360
        }
    }
}

#Preview {
    BallsAnimationForGift()
}

struct BallView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .stroke(.fill, lineWidth: 1)
                .shadow(color: color, radius: 4)
                .frame(width: 30, height: 30)
            
        }
    }
}

