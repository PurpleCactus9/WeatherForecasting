//
//  ThreeDayForecast.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/5/24.
//

import SwiftUI

struct ThreeDayForecast: View {
    var body: some View {
        HStack {
            Text("Day")
            
            Spacer()
            
            Text("High: 92°F")
            
            Spacer()
            
            Text("Low: 65°F")
            
            Spacer()
            
            Image(systemName: "sun.max.fill")
        }
        .padding(9)
        .padding(.horizontal, 20)
        .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors:[Color("ColorOne"), Color("ColorTwo")]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
        .padding(.horizontal, 10)

    }
}

#Preview {
    ThreeDayForecast()
}
