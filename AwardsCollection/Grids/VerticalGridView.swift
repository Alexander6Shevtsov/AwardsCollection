//
//  VerticalGridView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 07.05.2025.
//

import SwiftUI

struct VerticalGridView: View {
    private let dataSet = (1...100).map { "Item \($0)" }
    private let columns = [
        GridItem(.adaptive(minimum: 80)), // внешний вид ячеек
        GridItem(.fixed(90)),
        GridItem(.flexible(minimum: 65, maximum: 70))
    ]
    
    var body: some View {
        ScrollView { // если контент должен скролиться
            LazyVGrid(columns: columns) {
                ForEach(dataSet, id: \.self) { item in
                Text(item)
                }
            }
        }
    }
}

#Preview {
    VerticalGridView()
}
