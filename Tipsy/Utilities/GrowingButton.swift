//
//  GrowingButton.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 11/06/2023.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    let colorName: String
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 270, height: 50, alignment: .center)
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("Purple"), Color("Lavander")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .font(.system(size: 35, weight: .bold, design: .monospaced))
            .foregroundColor(Color(colorName))
            .clipShape(Capsule())
            .shadow(color: Color("Lavander"), radius: 4)
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
            .padding()
            .padding(.bottom, 35)
    }
}


