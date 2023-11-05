//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI

struct WeatherView: View {
    
    var weather: ResponseBody
    
    var body: some View {
        VStack {
            Text(weather.name)
                .font(.largeTitle)

            
            LottieView(name: getAnimationForWeather(status: weather.weather[0].main), loopMode: .loop)
                .frame(width: 200,height: 200)
                .scaleEffect(0.7)
    
            Text(String(format: "%.0f", weather.main.temp)+"°C")
                .padding()
                .font(.system(size: 25, weight: .bold))
            Text("Odczuwalna")
            Text(String(format: "%.0f", weather.main.feelsLike)+"°C")
                .font(.system(size: 17, weight: .bold))
            
            Spacer()
        }
        
    }
    
    func getAnimationForWeather(status: String) -> String {
        print(status)
        switch String(status).lowercased() {
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
