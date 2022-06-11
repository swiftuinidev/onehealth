//
//  Calories.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import Foundation
class Calories: ObservableObject {
    @Published var age: Double
    @Published var caloriesToTrack: Double

    init(caloriesToTrack: Double, age: Double) {
        self.caloriesToTrack = caloriesToTrack
        self.age = age
       }

}
 

