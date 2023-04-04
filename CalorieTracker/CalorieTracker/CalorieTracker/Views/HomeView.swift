//
//  HomeView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var todayCalories: DayCalories
    //@State var todayCalories = 800
    var totalCalories = 2000
    var remainingCalories: Int {
        totalCalories - todayCalories.calories
    }
    
    var body: some View {
        VStack {
            Text("Awesome Calorie Tracker")
                .font(.title)
                .bold()
            Spacer()
            Text("Today's Calories")
                .padding()
            Text("\(todayCalories.calories)")
                .padding()
                .border(.blue)
            Spacer()
            Text("Calories Remaining")
            Text("\(remainingCalories)")
                .padding()
                .border(.blue)
            Spacer()
            Button {
                //add a food item to the list
                todayCalories.addFoodItem(FoodItem(name: "apple", calories: 100))
            } label: {
                Image(systemName:("plus.circle"))
                Text("Add Item")
            }
            
        }
        .font(.title2)
        .foregroundColor(.blue)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DayCalories())
            .environmentObject(FoodList())
    }
}
