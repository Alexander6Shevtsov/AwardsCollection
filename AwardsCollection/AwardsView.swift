//
//  AwardsView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

// первая реализация
//struct AwardsView: View {
//    private let awards = Award.awards.filter { $0.awarded }
//    
//    var body: some View {
//        NavigationStack {
//            CustomGridView(items: awards, columns: 2) { award in
//                VStack {
//                    award.awardView
//                    Text(award.title)
//                }
//            }
//            .navigationTitle("Your awards: \(awards.count)")
//        }
//    }
//}

// вторая
struct AwardsView: View {
    private let awards = Award.awards.filter { $0.awarded }
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(awards, id: \.title) { award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
                .navigationTitle("Your awards: \(awards.count)")
            }
        }
    }
}

#Preview {
    AwardsView()
}
