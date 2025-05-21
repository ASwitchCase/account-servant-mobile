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
        .cornerRadius(5)
        .font(.system(.title, design: .rounded, weight: .bold))
        .foregroundColor(.black)
        .padding(10)
        .background {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.black, lineWidth: 2)
                .foregroundColor(.white)
        }
        .scaleEffect(x: configuration.isPressed ? 0.96 : 1, y: configuration.isPressed ? 0.96 : 1) 
    }
}
