//
//  SearchHeaderView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/4/24.
//

import SwiftUI

struct SearchHeaderView: View {
    
    @State private var cityName = ""
    
    var fetchWeather: (String) -> Void
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding(.leading, 10)
            
            ZStack(alignment: .leading) {
                if cityName.isEmpty {
                    Text("Enter city name")
                        .foregroundColor(.white.opacity(0.8))
                        .padding(.leading, 5)
                }
                // Creates an area for user input, binds the text to the cityName variable.
                TextField("", text: $cityName, onCommit: {
                    fetchWeather(cityName)})
                }
                    .padding(.leading, 5)
            
            
            Image(systemName: "location.fill")
                .padding(.trailing, 5)
        }
        
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
    }
}

//#Preview {
//    SearchHeaderView()
//}
