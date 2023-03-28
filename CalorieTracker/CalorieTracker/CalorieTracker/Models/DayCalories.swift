//
//  DayCalories.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import Foundation

class DayCalories: ObservableObject {
    @Published var totalCalories: Int
    
    init(with checking: Bool) {
//        if(totalCalories > 0) {
//            for(totalCalories.length) {
//                totalCalories = totalCalories[$0] + totalCalories
//            }
//        }
        totalCalories = 100
    }
    
}


