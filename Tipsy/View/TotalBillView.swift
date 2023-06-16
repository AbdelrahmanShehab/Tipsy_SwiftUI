//
//  TotalBillView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct TotalBillView: View {
    // MARK: -  PROPERTIES
    @EnvironmentObject var tipsModel: TipsViewModel
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            Text("Enter Your Total Bill")
                .foregroundColor(.secondary)
                .font(.system(.subheadline, design: .monospaced, weight: .semibold))
                .frame(width: 300, height: 40, alignment: .leading)
            
            TextField(text: $tipsModel.totalBill) {
                Text("$")
                    .font(.system(size: 45))
            }//: TEXTFIELD
            .frame(maxWidth: 300, alignment: .center)
            .font(.system(size: 50, weight: .bold, design: .monospaced))
            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("Silver"), style: StrokeStyle(lineWidth: 2)))
//            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .padding()

        }//: VSTACK
    }
}

// MARK: -  PREVIEW
struct TotalMoneyView_Previews: PreviewProvider {
    @State static var value: String = ""
    static var previews: some View {
        TotalBillView()
            .environmentObject(TipsViewModel())
            .previewLayout(.sizeThatFits)
    }
}
