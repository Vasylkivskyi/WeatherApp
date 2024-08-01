//
//  WeatherDayView.swift
//  Weather
//
//  Created by Pavlo Vasylkivskyi on 01.08.2024.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var dayTextSize: Double
    var temperatureSize: Double
    var frameSize: Double
    var temperature: Int
    
    var body: some View {
        VStack(alignment: .center) {
            Text(dayOfWeek)
                .font(.system(size: dayTextSize , weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frameSize, height: frameSize)
            Text(String("\(temperature)°"))
                .font(.system(size: temperatureSize, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", dayTextSize: 22, temperatureSize: 22, frameSize: 50, temperature: 30)
}
