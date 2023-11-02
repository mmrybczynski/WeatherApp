//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "location.fill")
                    .padding(.vertical,5)
                Text("City")
                Spacer()
                
                LottieView(name: Constants.wait, loopMode: .loop)
                
                Spacer()
                Text("16")
                    .padding()
            }
        }
    }
}

#Preview {
    WeatherView()
}
