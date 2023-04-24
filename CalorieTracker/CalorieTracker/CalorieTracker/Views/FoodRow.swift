//
//  FoodView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/5/23.
//

import SwiftUI

struct FoodRow: View {

 var food: FoodItem

    var body: some View {
        HStack {
            Text(food.name)
            Text(food.serving_size)
            Text("\(food.calories)")
        }
    }

}

struct FoodRow_Previews: PreviewProvider {
    static var foods = ModelData().foods
    static var previews: some View {
        VStack {
            FoodRow(food: foods[0])
            FoodRow(food: foods[1])
            FoodRow(food: foods[2])

        }
        
    }
}
