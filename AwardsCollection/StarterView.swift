//
//  StarterView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 28.04.2025.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            CartRacingView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart Racing")
                }
            
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

#Preview {
    StarterView()
}
