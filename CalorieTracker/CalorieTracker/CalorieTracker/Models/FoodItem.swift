//
//  FoodItem.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation
import SwiftUI


struct FoodItem: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var serving_size: String
    var calories: Int
    var isFavorite: Bool
    //IF want to do the multiple portions then need to add a "quantity" variable
}
