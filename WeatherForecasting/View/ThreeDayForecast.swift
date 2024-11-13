//
//  ThreeDayForecast.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/5/24.
//

import SwiftUI

struct ThreeDayForecast: View {
    
    var forecast: [ForecastDay]
    
    var body: some View {
        
        LazyVStack {
            
            ForEach(forecast.prefix(3), id:\.date) { ForecastDay in
                dailyCell(forecastDay: ForecastDay)
            }
            }
        }
    
    private func dailyCell(forecastDay: ForecastDay) -> some View {
        HStack {
            Text(dayOfWeek(for: forecastDay.date))
            
            Spacer()
            
            Text("High: \(Int(round(forecastDay.day.maxtemp_f)))°F")
            
            Spacer()
            
            Text("Low: \(Int(round(forecastDay.day.mintemp_f)))°F")
            
            Spacer()
            
            Image(systemName: WeatherIconViewModel(for: forecastDay.day.condition.code))
        }
        .padding(9)
        .padding(.horizontal, 20)
        .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors:[Color("ColorThree"), Color("ColorOne")]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
        .padding(.horizontal, 10)

    }
    
    // Converts a data strings format ("yyyy-MM-dd") to the corresponding day of the week ("EEEE")
    private func dayOfWeek(for dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: dateString) else {
            return ""
        }
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date)
    }
}

//#Preview {
//    ThreeDayForecast()
//}
