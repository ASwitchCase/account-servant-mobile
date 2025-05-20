//
//  ButtonStyles.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/15/25.
//
import SwiftUI

struct DefaultButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        let label = configuration.label
        
        HStack {
            Spacer()
            label
            Spacer()
        }
        .font(.system(.title, design: .rounded, weight: .bold))
        .foregroundColor(.white)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue)
        }
        .scaleEffect(x: configuration.isPressed ? 0.96 : 1, y: configuration.isPressed ? 0.96 : 1) 
    }
}
