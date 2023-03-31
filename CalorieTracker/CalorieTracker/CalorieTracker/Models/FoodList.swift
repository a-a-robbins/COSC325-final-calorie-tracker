//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation

class FoodList: ObservableObject {
    @Published var foodList: [FoodItem] = []
    
    let id = UUID()
    let today = Date()
    var name: String?
    var calories: Int?
        
    init(name: String, calories: Int) {
        self.name = "apple"
        self.calories = 100
    }
}
