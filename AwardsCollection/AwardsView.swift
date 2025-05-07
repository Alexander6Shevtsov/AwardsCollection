//
//  AwardsView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

struct AwardsView: View {
    private let awards = Award.awards.filter { $0.awarded }
    
    var body: some View {
        NavigationStack {
            CustomGridView(items: awards, columns: 2) { award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
            }
            .navigationTitle("Your awards: \(awards.count)")
        }
    }
}

#Preview {
    AwardsView()
}
