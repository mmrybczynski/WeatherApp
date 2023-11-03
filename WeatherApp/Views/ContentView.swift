//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                ShareLocationView()
            } else {
                WeatherView()
            }
        }
    }
}

#Preview {
    ContentView()
}
