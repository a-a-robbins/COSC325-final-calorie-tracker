//
//  FoodView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/5/23.
//

import SwiftUI

struct FoodRow: View {
    @EnvironmentObject var modelData: ModelData

    var food: FoodItem

//    var foodIndex: Int {
//        modelData.foods.firstIndex(where: { $0.id == food.id })!
//    }

    
    var body: some View {
        HStack {
            Text(food.name)
            Text(food.serving_size)
            Text("\(food.calories)")
            Spacer()
//            FavoriteButton(isSet: $modelData.foods[foodIndex].is_favorite)
            
            if food.is_favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } 
        }
    }

}

struct FoodRow_Previews: PreviewProvider {
    static var foods = ModelData().foods
    static var previews: some View {
        VStack {
            FoodRow(food: foods[0])
            FoodRow(food: foods[1])
        }
        .environmentObject(ModelData())
        
    }
}
