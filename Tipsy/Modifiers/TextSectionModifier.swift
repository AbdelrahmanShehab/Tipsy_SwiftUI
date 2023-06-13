//
//  TextSectionModifier.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct TextSectionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25, weight: .heavy, design: .monospaced))
            .foregroundColor(Color("Yellow"))
    }
}

