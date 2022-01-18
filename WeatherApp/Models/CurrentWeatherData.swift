//
//  CurrentWeatherData.swift
//  WeatherApp
//
//  Created by Anna Kulieshova on 18.01.2022.
//

import Foundation


struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Weather: Codable {
    let id: Int
}

struct Main: Codable {
    let temp, feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}
