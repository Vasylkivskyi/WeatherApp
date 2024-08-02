//
//  CustomButton.swift
//  Weather
//
//  Created by Pavlo Vasylkivskyi on 01.08.2024.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var action: () -> Void
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .foregroundStyle(Color(textColor))
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(8)
        }
    }
}

