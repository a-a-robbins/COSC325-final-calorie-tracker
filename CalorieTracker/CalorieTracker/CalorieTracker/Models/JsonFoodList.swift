//
//  JsonFoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/24/23.
//

import Foundation

struct JsonFoodList: Hashable, Codable {
    var id: Int
    var name: String
    var serving_size: String
    var calories: Int
}
