//
//  DuckView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 03.05.2025.
//

import SwiftUI

struct AnimationForDuck: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 100, y: 20))
                path.addLine(to: CGPoint(x: 125, y: 40))
                path.addLine(to: CGPoint(x: 120, y: 70))
                path.addLine(to: CGPoint(x: 100, y: 90))
                path.addLine(to: CGPoint(x: 120, y: 95))
                path.addLine(to: CGPoint(x: 140, y: 100))
                path.addLine(to: CGPoint(x: 155, y: 95))
                path.addLine(to: CGPoint(x: 160, y: 85))
                path.addLine(to: CGPoint(x: 180, y: 75))
                path.addLine(to: CGPoint(x: 190, y: 140))
                path.addLine(to: CGPoint(x: 140, y: 190))
                path.addLine(to: CGPoint(x: 70, y: 190))
                path.addLine(to: CGPoint(x: 20, y: 160))
                path.addLine(to: CGPoint(x: 20, y: 120))
                path.addLine(to: CGPoint(x: 50, y: 95))
                path.addLine(to: CGPoint(x: 55, y: 80))
                path.addLine(to: CGPoint(x: 50, y: 75))
                path.addLine(to: CGPoint(x: 55, y: 65))
                path.addLine(to: CGPoint(x: 50, y: 60))
                path.addLine(to: CGPoint(x: 50, y: 45))
                path.addLine(to: CGPoint(x: 55, y: 35))
                path.addLine(to: CGPoint(x: 70, y: 20))
            }
            .fill(Color(red: 1, green: 0.9, blue: 0))
            
            Path { path in
                path.move(to: CGPoint(x: 55, y: 35))
                path.addLine(to: CGPoint(x: 50, y: 45))
                path.addLine(to: CGPoint(x: 50, y: 60))
                path.addLine(to: CGPoint(x: 50, y: 45))
                path.addLine(to: CGPoint(x: 55, y: 65))
                path.addLine(to: CGPoint(x: 50, y: 75))
                path.addLine(to: CGPoint(x: 45, y: 70))
                path.addLine(to: CGPoint(x: 35, y: 65))
                path.addLine(to: CGPoint(x: 30, y: 65))
                path.addLine(to: CGPoint(x: 25, y: 60))
                path.addLine(to: CGPoint(x: 25, y: 60))
                path.addLine(to: CGPoint(x: 30, y: 55))
                path.addLine(to: CGPoint(x: 20, y: 50))
                path.addLine(to: CGPoint(x: 18, y: 40))
                path.addLine(to: CGPoint(x: 25, y: 35))
                path.addLine(to: CGPoint(x: 35, y: 40))
                path.addLine(to: CGPoint(x: 50, y: 33))
            }
            .fill(Color(red: 1, green: 0, blue: 0.3))
            
            Path { path in
                path.move(to: CGPoint(x: 65, y: 45))
                path.addLine(to: CGPoint(x: 78, y: 30))
            }
            .stroke(
                Color(.white),
                style: StrokeStyle(lineWidth: 12)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 69, y: 40))
                path.addLine(to: CGPoint(x: 76, y: 32))
            }
            .stroke(
                Color(.black),
                style: StrokeStyle(lineWidth: 6)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 72, y: 36))
                path.addLine(to: CGPoint(x: 75, y: 33))
            }
            .stroke(
                Color(.white),
                style: StrokeStyle(lineWidth: 3)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 90, y: 110))
                path.addLine(to: CGPoint(x: 130, y: 125))
                path.addLine(to: CGPoint(x: 140, y: 120))
                path.addLine(to: CGPoint(x: 145, y: 125))
                path.addLine(to: CGPoint(x: 120, y: 160))
                path.addLine(to: CGPoint(x: 90, y: 165))
                path.addLine(to: CGPoint(x: 60, y: 140))
                path.addLine(to: CGPoint(x: 65, y: 120))
            }
            .fill(Color(red: 1, green: 0.75, blue: 0))
            
            Path { path in
                path.move(to: CGPoint(x: 95, y: 118))
                path.addLine(to: CGPoint(x: 110, y: 128))
                path.addLine(to: CGPoint(x: 130, y: 131))
            }
            .stroke(
                Color(.white),
                style: StrokeStyle(lineWidth: 3)
            )
        }
    }
}

#Preview {
    AnimationForDuck()
        .frame(width: 200, height: 200)
}
