//
//  CartRacingView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

struct CartRacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                CartView(
                    start: start,
                    title: "Default",
                    color: .red,
                    animation: .default.speed(0.5)
                )
                CartView(
                    start: start,
                    title: "EaseOut",
                    color: .green,
                    animation: .easeOut(duration: 0.7)
                )
                CartView(
                    start: start,
                    title: "EaseIn",
                    color: .yellow,
                    animation: .easeIn(duration: 0.7)
                )
                CartView(
                    start: start,
                    title: "EaseInOut",
                    color: .blue,
                    animation: .easeInOut(duration: 0.7)
                )
                CartView(
                    start: start,
                    title: "InterpolationSpring",
                    color: .brown,
                    animation: .interpolatingSpring(
                        mass: 1, // масса
                        stiffness: 100, // жесткость
                        damping: 10, // трение
                        initialVelocity: 1 // нач ускорение
                    ) // .repeatCount(3, autoreverses: true)
                )
                CartView(
                    start: start,
                    title: "Spring",
                    color: .orange,
                    animation: .spring(
                        response: 0.55, // длительность
                        dampingFraction: 0.45, // затухание
                        blendDuration: 0 // переход между анимациями
                    )
                )
            }
            Spacer()
        }
        .onTapGesture { // тап по экрану
            start.toggle()
        }
    }
}

#Preview(traits: .landscapeLeft) {
    CartRacingView()
}






struct CartView: View {
    let start: Bool
    let title: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundStyle(color)
                .offset(x: start ? UIScreen.main.bounds.width - 220 : 0)
                .animation(animation, value: start)
            Text(title)
        }
    }
}
