//
//  DayView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct DayView: View {
    @EnvironmentObject var todayCalories: DayCalories

    var body: some View {
        VStack {
            Text("Diary")
                .font(.largeTitle)
            Text("Food eaten today: ")
                .padding(.top)
            Divider()
            ForEach(todayCalories.dayCalories, id: \.self) { food in
                HStack {
                    Text("\(food.name) \(food.portion) \(food.calories)")
                }
                .padding()
            }
            Spacer()
            Divider()
            Text("Total calories: \(todayCalories.calories)")
                .fontWeight(.bold)
                .padding(.bottom)
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
            .environmentObject(DayCalories())
    }
}
