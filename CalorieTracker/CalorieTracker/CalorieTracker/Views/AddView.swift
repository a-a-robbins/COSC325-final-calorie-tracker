//
//  AddView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var foodList: FoodList
    @EnvironmentObject var dayCalories: DayCalories
    
    var body: some View {
        ScrollView {
            Text("Add Food")
                .font(.largeTitle)
            Text("Choose your food from the following options: ")
                .padding(.top)
            Spacer()
            Divider()
                ForEach(foodList.foods, id: \.self) { food in
                    HStack {
                        
//                        Text("\(food.name) \(food.portion) \(food.calories)")
//                            .padding()
                        Spacer()
                        Button {
//                            dayCalories.addFoodItem(FoodItem(name: food.name, portion: food.portion, calories: food.calories))
    
                        } label: {
                            Image(systemName: "plus.circle")
                        }
                    }
                    .padding()
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(FoodList())
    }
}
