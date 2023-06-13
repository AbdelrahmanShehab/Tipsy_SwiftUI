//
//  TextTitleModifier.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct TextTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 60, alignment: .center)
            .font(.system(size: 50, weight: .heavy, design: .monospaced))
            .foregroundStyle(.linearGradient(Gradient(colors: [
                Color("Navy"),
                Color("Purple")])
            , startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: Color("Purple"), radius: 2, x: -2, y: 2)
     
    }
}

