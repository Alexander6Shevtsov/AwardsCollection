//
//  CustomGridView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 06.05.2025.
//

import SwiftUI

struct CustomGridView<Content: View, T>: View {
    let items: [T]
    let columns: Int // колонки
    let content: (T) -> Content
    
    private var rows: Int { // кол строк
        items.count / columns
    }
    
    var body: some View {
        GeometryReader { geometry in
            let sideLength = geometry.size.width / CGFloat(columns) // размер для стороны ячейки
            ScrollView {
                VStack { // создание строк
                    ForEach(0...rows, id: \.self) { rowIndex in // кол строк
                        HStack { // создание столбцов
                            ForEach(0..<columns, id: \.self) { columnIndex in//кол столб
                                // делаем проверку с помощью функции
                                if let index = getIndexFor(row: rowIndex, andColumn: columnIndex) {
                                    content(items[index])
                                        .frame(width: sideLength, height: sideLength)
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // проверка - вышли за диапазон?
    private func getIndexFor(row: Int, andColumn column: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
}

#Preview {
    CustomGridView(items: [0, 1, 2, 3, 4, 5, 6], columns: 3) { item in
        Text(item.formatted())
    }
}
