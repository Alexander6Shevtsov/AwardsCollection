//
//  PathView.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in // оборачиваем чтоб зафиксировать размеры
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height) // размер по минимальному значению
            let middle =  size / 2 // находим середину
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in // рисуем трапецию
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine)) // ставим первую точку
                path.addLine(to: CGPoint(x: farLine, y: farLine)) // чертим линию ко второй
                path.addLine(to: CGPoint(x: nearLine, y: farLine)) // третья
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine)) // четвертая
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in // линия на трапеции
                path.move(to: CGPoint(x: middle, y: nearLine)) // начальная точка
                path.addLine(to: CGPoint(x: middle, y: farLine)) // конечная
            }
            .stroke( // проявляем линию
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3,
                    dash: [size / nearLine]
                )
            )
        }
    }
}

#Preview {
    PathView()
        .frame(width: 200, height: 200)
}
