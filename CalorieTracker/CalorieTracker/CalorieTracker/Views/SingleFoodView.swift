//
//  SingleFoodView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/27/23.
//

import SwiftUI

struct SingleFoodView: View {
    @EnvironmentObject var dayCalories: DayCalories
    @EnvironmentObject var modelData: ModelData
    @State private var count: Int = 0
    
    var food: FoodItem
    
    var foodIndex: Int {
        modelData.foods.firstIndex(where: { $0.id == food.id })!
    }
    
    var body: some View {
        VStack {
            Text("\(food.name)")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()
                .padding(.top)
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("Name:  \(food.name)")
                    .padding(.bottom)
                Text("Serving Size: \(food.serving_size)")
                    .padding(.bottom)
                Text("Protein: \(food.protein)")
                    .padding(.bottom)
                Text("Carbs: \(food.carbohydrate)")
                    .padding(.bottom)
                Text("Fat: \(food.total_fat)")
                    .padding(.bottom)
                Text("Calories: \(food.calories)")
                    .padding(.bottom)
                HStack {
                    Text("Is Favorite:")
                    FavoriteButton(isSet: $modelData.foods[foodIndex].is_favorite)
                }
            }
            .font(.title3)
            
            Spacer()
            //make add food a separate button that
            //that then binds to dayview and adds the
            //proper amount of food from counter
            
            
            Spacer()
        }
        
        
    }
}

struct SingleFoodView_Previews: PreviewProvider {
    static var foods = ModelData().foods

    static var previews: some View {

        SingleFoodView(food: foods[0])
            .environmentObject(ModelData())
            .environmentObject(DayCalories())
    }
}
