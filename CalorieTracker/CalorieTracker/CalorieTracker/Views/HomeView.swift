//
//  HomeView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct HomeView: View {
//    @EnvironmentObject var foods: FoodList
    @EnvironmentObject var todayCalories: DayCalories
    @State private var showingAddItem = false

    var totalCalories = 2000
    var remainingCalories: Int {
        totalCalories - todayCalories.calories
    }
    
    var body: some View {
        VStack {
            Text("Awesome Calorie Tracker")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding(.top)
            Divider()
            Spacer()
            HStack {
                Text("Today's Calories")
                Text("\(todayCalories.calories)")
                    .padding()
                    .foregroundColor(.blue)
            }
            .background(in: Rectangle())
            .font(.title)
            Spacer()
            HStack {
                Text("Calories Remaining")
                Text("\(remainingCalories)")
                    .padding()
                    .foregroundColor(.blue)
            }
            .font(.title)
            Spacer()
            Divider()
            
        }
        .font(.title2)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DayCalories())
//            .environmentObject(FoodList())
    }
}
