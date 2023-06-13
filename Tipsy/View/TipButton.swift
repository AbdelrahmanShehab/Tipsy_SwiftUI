//
//  TipButton.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 11/06/2023.
//

import SwiftUI

struct TipButton: View {
    // MARK: -  PROPERTIES
    let isSelected: Bool
    let text: String
    let action: ()-> Void
        
    // MARK: -  BODY
    var body: some View {
        
        Button {
            self.action()
        } label: {
            Text(text)
                .frame(width: 65, height: 65, alignment: .center)
                .font(.system(size: 25, weight: .semibold, design: .monospaced))
                .foregroundColor(Color("Silver"))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isSelected ? Color("Orchid") : Color("Lavander"))
                        .shadow(color: Color("Lavander"), radius: 3)
                )
        }// :BUTTON
        
    }
}

