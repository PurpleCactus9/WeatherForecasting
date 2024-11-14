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
    
    init(city: String) {
        self.city = city
        self.currentDate = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .none)
    }
    
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

//#Preview {
//    CityNameView(city: "Tulsa", currentDate: "September 4, 2024")
//}
