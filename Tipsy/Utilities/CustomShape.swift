//
//  CustomShape.swift
//  Tipsy
//
//  Created by Abdelrahman Shehab on 10/06/2023.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 50, height: 50))
        
        return Path(path.cgPath)
    }
    
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
