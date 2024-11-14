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
            
            SearchHeaderView(fetchWeather: {
                cityName in
                viewModel.fetchWeather(for: cityName)
            })
            
            if let city = viewModel.weatherResponse?.location.name {
                CityNameView(city: city)
            }
            
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            } else {
                CurrentWeatherView(weather:viewModel.weatherResponse)
            }
            
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
