//
//  SplitView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct SplitView: View {
    // MARK: -  PROPERTY
    @EnvironmentObject var tipsModel: TipsViewModel

    /// Make Customization in Stepper Button
    /*
    init() {
        UIStepper.appearance().setIncrementImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        UIStepper.appearance().setDecrementImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
    }
    */
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Choose Split")
                .modifier(TextSectionModifier())
            HStack(alignment: .center, spacing: 15) {
                Text("\(tipsModel.numberOfPeople)")
                    .frame(width: 65, height: 65, alignment: .center)
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                    .foregroundColor(Color("Silver"))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("Violet"))
                            .shadow(color: Color("Lavander"), radius: 3)
                    )
                
                Stepper("", value: $tipsModel.numberOfPeople, in: 2...16, step: 1)
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
        SplitView()
            .environmentObject(TipsViewModel())
            .previewLayout(.sizeThatFits)
        
    }
}
