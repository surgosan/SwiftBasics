//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Sergio Sanchez-Alvares on 6/5/24.
//

import SwiftUI


struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailngIcon: Self { Self() }
}
