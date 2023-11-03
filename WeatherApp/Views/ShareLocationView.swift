//
//  ShareLocationView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 03/11/2023.
//

import SwiftUI

struct ShareLocationView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue).ignoresSafeArea(.all)
            VStack {
                Spacer()
                Image(systemName: "location.circle.fill")
                    .resizable()
                    .frame(width: 130, height: 130)
                Spacer()
                Button(action: {
                    print("Allow location")
                    LocationManager.shared.requestLocation()
                }, label: {
                    Text("Udostępnij lokalizację")
                        .padding()
                        .font(.headline)
                        .foregroundColor(Color(.systemBlue))
                })
                .frame(width: UIScreen.main.bounds.width)
                .padding(.horizontal,-30)
                .background(Color.white)
                .clipShape(.capsule)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ShareLocationView()
}
