//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 04/11/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .frame(width: 100, height: 100)
            .scaleEffect(1.5)
    }
}

#Preview {
    LoadingView()
}
