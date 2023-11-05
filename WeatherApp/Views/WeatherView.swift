//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var locationManager = LocationManager.shared
    
    var weather: ResponseBody
    
    var body: some View {
        VStack {
            Text(weather.name)

            
            LottieView(name: getAnimationForWeather(status: weather.weather[0].main), loopMode: .loop)
                .frame(width: 100,height: 100)
                .scaleEffect(0.3)
    
            
            Text("\(weather.weather[0].main)")
            Text("16")
                .padding()
            
            Spacer()
        }
        .padding(0.0)
        .frame(height: .infinity)
        
    }
    
    func getAnimationForWeather(status: String) -> String {
        print(status)
        switch status {
        case "clouds", "mist", "smoke", "haze", "dust", "fog":
            return Constants.sunny
        case "rain", "drizzle", "shower rain":
            return Constants.rain
        case "thunderstorm":
            return Constants.thunder
        case "clear":
            return Constants.sunny
        case "snow":
            return Constants.snow
        default:
            return Constants.wait
        }
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
