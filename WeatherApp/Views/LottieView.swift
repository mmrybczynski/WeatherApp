//
//  LottieView.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    let name: String
    let loopMode: LottieLoopMode
    
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.loopMode = loopMode
        animationView.play()
        /*let view = UIView(frame: .zero)
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
                    animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
                    animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
                    animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                ])*/
        
        return animationView
    }
}

/* Feature update of this View
struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    let animationView: LottieAnimationView
    
    init(name: String, loopMode: LottieLoopMode, animationSpeed: CGFloat, animationView: LottieAnimationView) {
        self.name = name
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
        self.animationView = animationView
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //update View
    }
}
 */
