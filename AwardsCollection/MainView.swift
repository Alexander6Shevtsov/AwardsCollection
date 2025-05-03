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
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.down.square")
                    .scaleEffect(awardIsShowing ? 2 : 1) // размер иконки
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                //            .animation(.default, value: awardIsShowing) т.к. есть buttonAction
                
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
            
            if awardIsShowing {
                StarView(colors: [.red, .green], colorLine: .yellow)
                    .frame(width: 200, height: 200)
                    .transition(.leadingSlide) // кастом анимация
            } // скрытие и показ ачивок
            //                .offset(x: awardIsShowing ? 0 : -UIScreen.main.bounds.width)
            //            .animation(.default, value: awardIsShowing) т.к. есть buttonAction
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() { // по нажатию
        withAnimation { // все с анимацией
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition { // создаем кастом анимацию для дальнейшего исп
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale) // комбинируем с другой анимацией
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: .scale)
        // появление             скрытие
        return .asymmetric(insertion: insertion, removal: removal)
    } // возвращаем настроенную анимацию
}

#Preview {
    MainView()
}
