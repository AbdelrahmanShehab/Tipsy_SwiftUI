//
//  TipsViewModel.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 11/06/2023.
//

import Foundation

class TipsViewModel: ObservableObject {
    
    @Published var totalBill: String = ""
    @Published var tipAsString: String = "10%"
    @Published var tipAsDouble: Double = 0.0
    @Published var finalTipsResult: String = "0.0"
    @Published var numberOfPeople: Int = 2
    
    let tips: [Tips] = [
        Tips(text: "5%"),
        Tips(text: "10%"),
        Tips(text: "15%"),
        Tips(text: "20%")
    ]
    
    func selectTips(_ tip: Tips) -> Double {
        tips.forEach {
            $0.isTipSelected = false
        }
        tip.isTipSelected = true
        let buttonWithoutPrecentageSign = tip.text.dropLast()
        let buttonTitleAsNumber = Double(buttonWithoutPrecentageSign)!
        objectWillChange.send()
        return buttonTitleAsNumber / 100
    }
    
    func chooseTipsAsString(_ tip: Tips) -> String {
        tips.forEach {
            $0.isTipSelected = false
        }
        tip.isTipSelected = true
        objectWillChange.send()
        return tip.text
    }
    
    func resetTipSelection(_ tip: [Tips]) {
        tips.forEach {
            $0.isTipSelected = false
        }
        objectWillChange.send()
    }
}
