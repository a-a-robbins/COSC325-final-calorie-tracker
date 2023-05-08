//
//  FoodItem.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//
//  Based on SwiftUI Apprentice

import Foundation
import SwiftUI


struct FoodItem: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var serving_size: String
    var calories: Int
    var total_fat: String
    var protein: String
    var carbohydrate: String
    var is_favorite: Bool
    //IF want to do the multiple portions then need to add a "quantity" variable
    
//    var data: [FoodItem] = [
//        .init(type: "Protein", count: Int(data.protein)),
//        .init(type: "Carb", count: Int(data.carbohydrate)),
//        .init(type: "Fat", count: Int(data.total_fat))
//    ]
}
