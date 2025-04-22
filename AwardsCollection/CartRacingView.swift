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
            VStack {
                VStack {
                    Image(systemName: "cart.fill")
                        .font(.title)
                        .foregroundStyle(.red)
                    Text("Default")
                }
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

#Preview {
    CartRacingView()
}
