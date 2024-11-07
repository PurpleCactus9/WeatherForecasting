//
//  WeatherViewModel.swift
//  WeatherForecasting
//
//  Created by AM Student on 11/7/24.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    // Weather response data for the UI display
    @Published var weatherResponse: WeatherResponse?
    
    // Error message if fetching weather data fails
    @Published var errorMessage: String?
    
    private var cancellable: AnyCancellable?
    private let apiKey = "ea9b0faa7a4a4a4c8f9153539241410"
    private let defaultCity = "New York City"
    
    init() {
        fetchWeather(for: defaultCity)
    }
    
    func fetchWeather(for cityName: String) {
        
        // Retrieves forecast for 3 days
        let urlString = "https://api.weatherapi.com/v1/forecast.json?key=\(apiKey)&q\(cityName)&days=3"
        
        // Sets error message if URL creation fails
        guard let url = URL(string: urlString) else {
            errorMessage = "Invalid city name."
            return
        }
        
        // Creates a data task publisher for the provided URL
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
        
            // Extracts data from the weatherapi's output
            .map { $0.data }
        
            // Loads the raw JSON response if data is received successfully
            .handleEvents(receiveOutput: { data in
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Raw JSON response: \(jsonString)")
                }
            })
        
            // Decodes the received data
            .decode(type: WeatherResponse.self, decoder: JSONDecoder())
        
            // Receives the values
            .receive(on: DispatchQueue.main)
        
            // Handles the received values
            .sink(receiveCompletion: { completion in
                switch completion {
                    
                // Error message, if there's a failure
                case .failure(let error):
                    self.errorMessage = "Error fetching weather data: \(error.localizedDescription)"
                    print("Error: \(error)")
                    
                // If data is received successfully, do nothing here
                case .finished:
                    break
                }
            },
            
            // Handles the received values
            receiveValue: { response in
                print("Weather response: \(response)")
                
                // Sets the weatherResponse property and clears the error message
                self.weatherResponse = response
                self.errorMessage = nil
            })
    }
}
