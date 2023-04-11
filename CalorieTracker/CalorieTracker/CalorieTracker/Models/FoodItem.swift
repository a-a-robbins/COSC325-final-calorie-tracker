//
//  FoodItem.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/31/23.
//

import Foundation
import SwiftUI


struct FoodItem: Hashable, Codable {
    
    var name: String
    var portion: String
    var calories: Int
    
}
