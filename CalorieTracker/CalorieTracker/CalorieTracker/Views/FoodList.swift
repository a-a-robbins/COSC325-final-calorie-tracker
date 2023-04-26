//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/26/23.
//

import SwiftUI

struct FoodList: View {
    var body: some View {
        let foods = ModelData().foods
        
        List(foods, id: \.id) { food in
            FoodRow(food: food)
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
