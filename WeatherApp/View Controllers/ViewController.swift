//
//  ViewController.swift
//  WeatherApp
//
//  Created by Anna Kulieshova on 17.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    let networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton) {
        presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.fetchCurrentWeather(forCity: city)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

