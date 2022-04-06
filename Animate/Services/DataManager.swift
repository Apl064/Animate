//
//  DataManager.swift
//  Animate
//
//  Created by Pavel Metelin on 4/6/22.
//

import Spring

class DataAnimation {
    static var shared = DataAnimation()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
}
