//
//  ContentView.swift
//  Weather
//
//  Created by Pavlo Vasylkivskyi on 31.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                WeatherDayView(dayOfWeek: "Cupertino, CA ", 
                               imageName:
                                    isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                               dayTextSize: 32,
                               temperatureSize: 70,
                               frameSize: 180,
                               temperature: 32)
                
                HStack {
                    WeatherDayView(dayOfWeek: "TUE", 
                                   imageName: isNight ? "moon.fill" : "sun.max.fill",
                                   dayTextSize: 16,
                                   temperatureSize: 28,
                                   frameSize: 40,
                                   temperature: 28)
                    Spacer()
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: isNight ? "moon.fill" : "sun.max.fill",
                                   dayTextSize: 16,
                                   temperatureSize: 28,
                                   frameSize: 40,
                                   temperature: 29)
                    Spacer()
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName:
                                        isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   dayTextSize: 16,
                                   temperatureSize: 28,
                                   frameSize: 40,
                                   temperature: 21)
                    Spacer()
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: isNight ? "moon.fill" : "sun.max.fill",
                                   dayTextSize: 16,
                                   temperatureSize: 28,
                                   frameSize: 40,
                                   temperature: 24)
                    Spacer()
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName:
                                        isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   dayTextSize: 16,
                                   temperatureSize: 28,
                                   frameSize: 40,
                                   temperature: 23)
                }.padding()
                Spacer()
                
                CustomButton(
                    text: "Change Day Time",
                    action: changeDayTime,
                    backgroundColor: isNight ? .black : .white,
                    textColor: isNight ? .white : .blue
                )
                
                Spacer()
            }
        }
    }
    
    func changeDayTime() {
        isNight = !isNight
    }
}

#Preview {
    ContentView()
}

