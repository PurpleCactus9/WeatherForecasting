//
//  WeatherAnimationViewModel.swift
//  WeatherForecasting
//
//  Created by AM Student on 10/22/24.
//

import SwiftUI

// Returns the weather animation based on the given weather forecast.
func WeatherAnimationViewModel(for conditionCode: Int) -> String {
    switch conditionCode {
    case 1000:
        return "dayClearSky"
    case 1003:
        return "dayBrokenClouds"
    case 1006, 1009:
        return "dayBrokenClouds"
    case 1030, 1135, 1147:
        return "dayMist"
    case 1063, 1150, 1153, 1168, 1171:
        return "dayMist"
    case 1066, 1210, 1213, 1252, 1255, 1258, 1279, 1282:
        return "daySnow"
    case 1069, 1204, 1249, 1198, 1201:
        return "daySnow"
    case 1087, 1243, 1246, 1273, 1276:
        return "dayThunderstorm"
    case 1114, 1117:
        return "daySnow"
    case 1180, 1183, 1240:
        return "dayShowerRains"
    case 1186, 1189, 1192, 1195:
        return "dayShowerRains"
    case 1237, 1261:
        return "dayThunderstorm"
    case 1264:
        return "dayRain"
    default:
        return "dayClearSky"
    }
}
