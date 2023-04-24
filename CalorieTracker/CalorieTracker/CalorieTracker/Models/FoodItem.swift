//
//  FoodItem.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation
import SwiftUI


struct FoodItem: Hashable, Codable {
    
    var id: Int
    var name: String
    var serving_size: String
    var calories: Int
}
