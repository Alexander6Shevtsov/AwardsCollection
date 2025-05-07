//
//  HorizontalGridView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 07.05.2025.
//

import SwiftUI

struct HorizontalGridView: View {
    var body: some View {
        ScrollView(.horizontal) { // по умолч вертикальный
            LazyHGrid(rows: [GridItem()]) {
                ForEach(1...10, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                }
            }
        }
    }
}

#Preview {
    HorizontalGridView()
}
