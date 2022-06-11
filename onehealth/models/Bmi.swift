//
//  Bmi.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import Foundation
 
 struct BMI {
    let classification: WeightClass
    let value: Float
    let advice: String
    let symbol: String
 }


enum WeightClass {
    case underweight
    case healthy
    case overweight
    case obese
    case extremelyObese
    case unknown
}
