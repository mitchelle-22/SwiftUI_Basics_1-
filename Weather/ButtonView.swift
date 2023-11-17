//
//  ButtonView.swift
//  Weather
//
//  Created by MIch on 2023/11/14.
//

import SwiftUI

struct ButtonView : View {
    var name : String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(name)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}
