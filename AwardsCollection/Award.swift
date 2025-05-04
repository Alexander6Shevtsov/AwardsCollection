//
//  Award.swift
//  AwardsCollection
//
//  Created by Alexander Shevtsov on 30.04.2025.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static var awards: [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: 160, height: 160)),
                title: "Hypocycloid View",
                awarded: true
            ),
            Award(
                awardView: AnyView(StarView(colors: [.red, .green], colorLine: .yellow).frame(width: 160, height: 160)),
                title: "Star View",
                awarded: true
            ),
            Award(
                awardView: AnyView(DuckView().frame(width: 160, height: 160)),
                title: "Duck View",
                awarded: true
            )
        ]
    }
}


