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
    var calories: Int {
        var total = 0
        for item in dayCalories {
            total += item.calories
        }
        return total
    }
    
    func addFoodItem(_ item: FoodItem) {
        dayCalories.append(item)
    }

}
