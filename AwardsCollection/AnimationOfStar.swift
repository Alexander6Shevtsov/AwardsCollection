//
//  AnimationOfStar.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 01.05.2025.
//

import SwiftUI

struct AnimationOfStar: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                if awardIsShowing {
                    StarView(colors: [.white, .yellow], colorLine: .black)
                        .frame(width: 250, height: 250)
                        .transition(.customTransition)
                } else {
                    StarView(colors: [.black], colorLine: .yellow)
                        .frame(width: 250, height: 250)
                        .transition(.customTransition)
                }
            }
            
            Spacer()
            
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Black" : "Yellow")
            }
            .padding(.bottom, 100)
        }
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: scale)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

#Preview {
    AnimationOfStar()
}
