//
//  TipsResultView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 12/06/2023.
//

import SwiftUI

struct TipsResultView: View {
    // MARK: -  PROPERTIES
    @EnvironmentObject var tipsModel: TipsViewModel
    @Environment(\.dismiss) var dismiss
    @State private var isPresentingModel: Bool = false
    
    
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Spacer()
            Text("Total Per Person")
                .font(.system(size: 30, weight: .bold, design: .monospaced))
                .foregroundColor(Color("Yellow"))
            Spacer()
            
            Text(tipsModel.finalTipsResult)
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .foregroundColor(Color("Silver"))
            Spacer()
            
            VStack(alignment: .center, spacing: 85) {
                
                Text("Split between \(tipsModel.numberOfPeople) People with \(tipsModel.tipAsString) Tip")
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                    .foregroundColor(Color("SkyBlue"))
                    .multilineTextAlignment(.center)
                
                Divider()
                
                Button {
                    tipsModel.totalBill = ""
                    tipsModel.tipAsString = "0%"
                    tipsModel.tipAsDouble = 0.0
                    tipsModel.numberOfPeople = 2
                    tipsModel.finalTipsResult = "0.0"
                    tipsModel.resetTipSelection(tipsModel.tips)
                    dismiss()
                } label: {
                    Text("Recalculate")
                        .font(.system(size: 35, weight: .bold, design: .monospaced))
                }
                .buttonStyle(GrowingButton())
                .padding(.top, 25)
                .padding(.bottom, 15)
                
            }// VSTACK
            .padding(.horizontal)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("Violet"), Color("Purple")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .clipShape(CustomShape())
                    .padding(.top, -50)
            )
            
        }//: VSTACK
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Lavander"), Color("DarkPurple")]), startPoint: .topTrailing, endPoint: .bottomLeading)
        )
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .bottom)
        
    }
}

// MARK: -  PREVIEW
struct TipsResultView_Previews: PreviewProvider {
    static var previews: some View {
        TipsResultView()
            .environmentObject(TipsViewModel())
    }
        
}
