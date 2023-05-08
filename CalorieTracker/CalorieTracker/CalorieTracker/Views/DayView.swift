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
                .padding(.top)
                .foregroundColor(.blue)
            Text("Food eaten today: ")
                .padding(.top)
            Divider()                
                List {
                    ForEach(todayCalories.dayCalories, id: \.self) { food in
                        HStack {
                            Text("\(food.name) \(food.serving_size)")
                            Spacer()
                            Text("\(food.calories) calories")
                        }
                        .padding(.top)
                    }
                }
            Spacer()
            Text("Total calories: \(todayCalories.calories)")
                .fontWeight(.bold)
                .padding(.bottom)
            Spacer()
            Divider()
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
            .environmentObject(DayCalories())
    }
}
