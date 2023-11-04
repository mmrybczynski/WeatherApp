//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        VStack {
            Text("Miasto")
            Spacer()
            
            LottieView(name: Constants.wait, loopMode: .loop)
                .frame(width: 100,height: 100)
                .scaleEffect(0.3)
    
            Spacer()
            
            Text("16")
                .padding()
        }
        .padding(0.0)
        .frame(height: .infinity)
        
    }
}

#Preview {
    WeatherView()
}
