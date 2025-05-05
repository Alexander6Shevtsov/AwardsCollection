//
//  AwardsView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                    HypocycloidView(width: 200, height: 200, showSliders: false)
                    StarView(colors: [.red, .green], colorLine: .yellow)
                        .frame(width: 200, height: 200)
                    AnimationForDuck()
                        .frame(width: 200, height: 200)
                    LogoForGift(size: 200, achievementIsUnlocked: .constant(true))
                }
            }
            .navigationTitle("Awards")
        }
    }
}

#Preview {
    AwardsView()
}
