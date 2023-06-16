//
//  TipsView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 16/06/2023.
//

import SwiftUI

struct TipsView: View {
    @EnvironmentObject var tipsModel: TipsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            
            Text("Select Tip")
                .modifier(TextSectionModifier())
            
            HStack(alignment: .center, spacing: 30) {
                ForEach(tipsModel.tips, id: \.text) { tip in
                    TipButton(isSelected: tip.isTipSelected, text: tip.text) {
                        tipsModel.tipAsDouble = self.tipsModel.selectTips(tip)
                        tipsModel.tipAsString = self.tipsModel.chooseTipsAsString(tip)
                    }
                }//: LOOP
            }//: HSTACK
        }//: VSTACK
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
            .environmentObject(TipsViewModel())
    }
}
