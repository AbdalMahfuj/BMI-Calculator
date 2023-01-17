//
//  BMICalculateBrain.swift
//  BMI Calculator
//
//  Created by MAHFUJ on 11/12/22.
//  Copyright © 2022 MAHFUJ All rights reserved.
//

import Foundation
struct BMICalculateBrain {
    var height : Float = 0.0
    var weight : Float = 0.0
    
    mutating func calculatebmi(h: Float, w: Float) {
        height = h
        weight = w
    }
    
    
    func getBMI(h: Float,w: Float) -> String {
        let bmi = w / pow(h, 2)
        return String(format: "%.2f", bmi)
    }
    
    
}
