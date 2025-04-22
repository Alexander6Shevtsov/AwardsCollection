//
//  GradientRectangles.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 19.04.2025.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { geometry in // помещаем чтоб зафиксировать frame
            // инициализаторы размеров
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack { // для наложения квадратов друг на друга
                ForEach(0..<3) { iteration in // чтоб не нарушать повторять код
                    Rectangle() // прямоугольник
                        .fill( // заполняем
                            LinearGradient( // линейным градиентом
                                gradient: Gradient(colors: [.green, .blue]), // add цвета
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                                          )
                        ) // применяем размеры с коэффициентами к квадратам
                        .frame(width: width * 0.7, height: height * 0.7)
                        .rotationEffect(.degrees(Double(iteration) * 60))
                } // поворот в градусах, итерации * на 60, так первый не повернется
                // приводим к Double т.к. iteration: Int
                
                Image(systemName: "airplane")
                    .resizable() // сбрасываем размеры
                    .rotationEffect(.degrees(-90)) // поворачиваем
                    .opacity(0.5) // прозрачность
                    .scaleEffect(0.7) // размер с коэфф
            }
        }
    }
}

#Preview {
    GradientRectangles()
        .frame(width: 200, height: 200)
}
