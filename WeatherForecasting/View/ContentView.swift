//
//  ContentView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    @State private var cityName = "Tulsa"
    
    var body: some View {
        VStack {
            Spacer().frame(height:70)
            
            SearchHeaderView()
            
            CityNameView(city: "Tulsa", currentDate: "September 9, 2024")
                .padding()
            
            CurrentWeatherView()
                .padding(.bottom, 28)
            
            if let weather = viewModel.weatherResponse {
                ThreeDayForecast(forecast: weather.forecast.forecastday)
                    .padding(.top, 20)
            } else {
                Text("Loading forecast...")
            }
            
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorOne"), Color("ColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
