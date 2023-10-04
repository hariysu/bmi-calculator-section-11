//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdurahman on 4.10.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var BMIValue: String?

    
    mutating func calculateBMI(height: Float, weight:Float){
        BMIValue = String(format: "%.1f", weight / pow(height, 2))
    }
    
    func getBMIValue() ->String {
        return BMIValue!
    }
}
