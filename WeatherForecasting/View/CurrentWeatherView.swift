//
//  CurrentWeatherView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/4/24.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    var body: some View {
        VStack {
            Text("Current Weather")
                .font(.system(size: 36))
                .bold()
            
            HStack(spacing: 20) {
                Color.gray
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .trailing) {
                    Text("Temperature °F")
                        .font(.system(size: 30))
                    Text("Conditions")
                }
            }
            
            HStack {
                VStack {
                    Image(systemName: "wind")
                        .frame(width: 60, height:60)
                        .font(.system(size: 50))
                        .foregroundColor(.green)
                        .background(Color.white)
                        .cornerRadius(10)
                    Text("Wind Speed:\n10mph")
                        .multilineTextAlignment(.center)
                    
                }
                Spacer()
                VStack {
                    Image(systemName: "arrow.left.arrow.right")
                        .frame(width: 60, height:60)
                        .font(.system(size: 50))
                        .foregroundColor(.red)
                        .background(Color.white)
                        .cornerRadius(10)
                    Text("Wind Direction:\n S")
                        .multilineTextAlignment(.center)
                }
                Spacer()
                VStack {
                    Image(systemName: "drop")
                        .frame(width: 60, height:60)
                        .font(.system(size: 50))
                        .foregroundColor(.blue)
                        .background(Color.white)
                        .cornerRadius(10)
                    Text("Humidity:\n20%")
                        .multilineTextAlignment(.center)
                
                }
                
            }
        }
        
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors:[Color.blue.opacity(0.5), Color.blue]), startPoint: .top, endPoint: .bottom)).opacity(0.3))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

#Preview {
    CurrentWeatherView()
}
