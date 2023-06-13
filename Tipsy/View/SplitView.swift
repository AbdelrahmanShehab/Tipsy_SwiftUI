//
//  SplitView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct SplitView: View {
    // MARK: -  PROPERTY
    @Binding var stepValue: Int
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Choose Split")
                .modifier(TextSectionModifier())
            HStack(alignment: .center, spacing: 15) {
                Text("\(stepValue)")
                    .frame(width: 65, height: 65, alignment: .center)
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                    .foregroundColor(Color("Silver"))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("Violet"))
                            .shadow(color: Color("Lavander"), radius: 3)
                    )
                
                Stepper("", value: $stepValue, in: 2...16, step: 1)
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
}

// MARK: -  PREVIEW
struct SplitView_Previews: PreviewProvider {
    @State static var value: Int = 2
    static var previews: some View {
        SplitView(stepValue: $value)
            .previewLayout(.sizeThatFits)
    }
}
