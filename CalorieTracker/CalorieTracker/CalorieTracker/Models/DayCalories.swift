//
//  DayCalories.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation

class DayCalories: ObservableObject {
    @Published var dayCalories: [FoodItem] = []
    
    let id = UUID()
    let day = Date()
    var name: String
    var calories: Int
    
    
    //FIXME: still don't understand initializers :-/
    init?(name: String, calories: Int) {
        return nil
    }
}
