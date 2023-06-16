//
//  ContentView.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  PROPERTIES
    @State private var isPresentingModel: Bool = false
    @StateObject var tipsViewModel = TipsViewModel()
    
    
    // MARK: -  BODY
    var body: some View {
        VStack {
            Text("Tipsy")
                .modifier(TextTitleModifier())
            
            Spacer()
            
            // MARK: -  TOTAL BILL
            TotalBillView()
            
            Spacer()
            
            VStack {
                
                // MARK: -  TIPS
                
                TipsView()
                
                Divider()
                
                // MARK: -  SPLIT VIEW
                SplitView()
                
                Divider()
                
                // MARK: -  CALCULATION BUTTON
                
                Button {
                    if tipsViewModel.totalBill != "" {
                        let billTotal = Double(tipsViewModel.totalBill)!
                        let result = (billTotal + tipsViewModel.tipAsDouble * billTotal) / Double(tipsViewModel.numberOfPeople)
                        
                        tipsViewModel.finalTipsResult = String(format: "%.2f", result)
                        print(tipsViewModel.finalTipsResult)
                        self.isPresentingModel = true
                    }
                } label: {
                    Text("Calculate")
                        .font(.system(size: 35, weight: .bold, design: .monospaced))
                }
                .sheet(isPresented: $isPresentingModel, content: {
                    TipsResultView()
                })
                .buttonStyle(GrowingButton())
          
            }//: VSTACK
            .padding(.horizontal)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("DarkPurple"), Color("")]), startPoint: .top, endPoint: .bottom).opacity(0.75)
                .clipShape(CustomShape())
                    .padding(.top, -50)
            )
            
        }//: VSTACK
        .environmentObject(tipsViewModel)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Lavander"), Color("DarkPurple")]), startPoint: .topTrailing, endPoint: .bottomLeading)
        )
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .bottom)
        
    }
}

// MARK: -  PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
