//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation

//var foodList: [FoodItem] = load("foodList.json")

class FoodList: ObservableObject {
    @Published var foods: [FoodItem] = [
        FoodItem(name: "Apple", portion: "1 medium", calories: 100),
        FoodItem(name: "Broccoli", portion: "1 cup", calories: 25),
        FoodItem(name: "Cheese", portion: "1 oz", calories: 100),
        FoodItem(name: "Egg", portion: "1 large", calories: 70),
        FoodItem(name: "French Fries", portion: "1/2 cup", calories: 200),
        FoodItem(name: "Jam (Grape)", portion: "1 Tbsp", calories: 70)
    ]
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \n\(error)")
    }
}
