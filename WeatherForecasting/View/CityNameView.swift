//
//  CityNameView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/4/24.
//

import SwiftUI

struct CityNameView: View {
    
    var city: String
    var currentDate: String
    
    var body: some View {
        VStack {
            Text(city)
                .font(.largeTitle)
                .bold()
            Text(currentDate)
                .font(.title2)
        }
    }
}

#Preview {
    CityNameView(city: "Tulsa", currentDate: "September 4, 2024")
}
