//
//  BackgroundView.swift
//  Weather
//
//  Created by Pavlo Vasylkivskyi on 01.08.2024.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ).ignoresSafeArea()
    }
}


