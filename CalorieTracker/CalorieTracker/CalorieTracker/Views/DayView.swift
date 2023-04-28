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
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading) {
                    ForEach(todayCalories.dayCalories, id: \.self) { food in
                        HStack {
                            Text("\(food.name) \(food.serving_size) \(food.calories)")
                        }
                        .padding()
                    }
                }
            }
            Spacer()
            Divider()
            Text("Total calories: \(todayCalories.calories)")
                .fontWeight(.bold)
                .padding(.bottom)
            Spacer()
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
            .environmentObject(DayCalories())
    }
}
