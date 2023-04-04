//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation

class FoodList: ObservableObject {
    @Published var foodList: [FoodItem] = []
    
//    let id = UUID()
//    let today = Date()
//    var name: String?
//    var calories: Int?
    
    func createList() {
        foodList.append(FoodItem(name: "apple", calories: 100))
        foodList.append(FoodItem(name: "cheese", calories: 100))
        foodList.append(FoodItem(name: "chicken", calories: 200))
        foodList.append(FoodItem(name: "enchilada", calories: 500))
    }
   
        
}
