//
//  LottieView.swift
//  WeatherForecasting
//
//  Created by AM Student on 10/22/24.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    let loopMode: LottieLoopMode
    let animationName: String
    
    func updateUIView(_ uiView: LottieAnimationView, context: Context) {
        uiView.animation = LottieAnimation.named(animationName)
        uiView.play()
        
    }
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = Lottie.LottieAnimationView(name: animationName)
        animationView.play()
        animationView.loopMode = loopMode
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}

#Preview {
    LottieView(loopMode: .loop, animationName: "dayClearSky")
}
