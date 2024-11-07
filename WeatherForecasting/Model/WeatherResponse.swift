//
//  WeatherResponse.swift
//  WeatherForecasting
//
//  Created by AM Student on 11/7/24.
//

import Foundation

// Location details in the weather API response
struct Location: Codable {
    let name: String
    let region: String
    let country: String
    let lat: Double
    let lon: Double
    let tz_id: String
    let localtime_epoch: Int
    let localtime: String
}

// Weather condition details in the weather API response
struct Condition: Codable {
    let text: String
    let code: Int
}

// Current weather details in the weather API response
struct Current: Codable {
    let temp_f: Double
    let condition: Condition
    let wind_mph: Double
    let wind_dir: String
    let humidity: Int
}

// Daily weather forecast details in the weather API response
struct Day: Codable {
    let maxtemp_f: Double
    let mintemp_f: Double
    let condition: Condition
}

// Forecast details for a day in the weather API response, including date and day-specific weather data
struct ForecastDay: Codable {
    let date: String
    let day: Day
}

// Forecast for multiple days in the weather API response
struct Forecast: Codable {
    let forecastday: [ForecastDay]
}

// The complete weather response data from the API response
struct WeatherResponse: Codable {
    let location: Location
    let current: Current
    let forecast: Forecast
}
