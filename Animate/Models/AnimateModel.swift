//
//  AnimateModel.swift
//  Animate
//
//  Created by Pavel Metelin on 4/6/22.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    
    static func getAnimation() -> Animation {
        let da = DataAnimation.shared
        let animation = Animation(preset: da.presets.randomElement()!.rawValue,
                                  curve: da.curves.randomElement()!.rawValue,
                                  force: Double.random(in: 0.6...1),
                                  delay: Double.random(in: 0.6...0.9),
                                  duration: Double.random(in: 1...2))
        return animation
    }
}
