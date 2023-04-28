//
//  SingleFoodView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/27/23.
//

import SwiftUI

struct SingleFoodView: View {
    @EnvironmentObject var dayCalories: DayCalories
    @State private var count: Int = 0
    
    var food: FoodItem
    
    var body: some View {
        VStack {
            Text("Food Name")
                .font(.largeTitle)
                .bold()
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("Name:  \(food.name)")
                    .padding(.bottom)
                Text("Serving Size: \(food.serving_size)")
                    .padding(.bottom)
                Text("Calories: \(food.calories)")
                    .padding(.bottom)
            }
            .font(.title3)
            
            Spacer()
            //make add food a separate button that
            //that then binds to dayview and adds the
            //proper amount of food from counter
            HStack {
                Text("Add Food")
                Button {
                    dayCalories.addFoodItem(food)
                    self.count += 1
                
                } label: {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.black)
                }
                Text("\(count)")
            }
            
            Spacer()
        }
        
        
    }
}

struct SingleFoodView_Previews: PreviewProvider {
    static var foods = ModelData().foods

    static var previews: some View {
        SingleFoodView(food: foods[0])
    }
}
