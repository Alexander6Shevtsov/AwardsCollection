//
//  MainView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 23.04.2025.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.down.square")
                    .scaleEffect(awardIsShowing ? 2 : 1) // размер иконки
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                    .animation(.default, value: awardIsShowing)
                // без анимации тоже работает
                
//                HStack {
//                    if awardIsShowing {
//                        Text("Hide Award")
//                        Image(systemName: "chevron.up.square")
//                    } else {
//                        Text("Show Award")
//                        Image(systemName: "chevron.down.square")
//                    }
//                }
                
            }
            
            Spacer()
            
            GradientRectangles()
                .frame(width: 250, height: 250)
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

#Preview {
    MainView()
}
