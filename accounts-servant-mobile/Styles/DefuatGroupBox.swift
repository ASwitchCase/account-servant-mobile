//
//  DefuatGroupBox.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/24/25.
//

import SwiftUI
struct DefualtGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(25)
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .stroke(.black, lineWidth: 2)
            )
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}
