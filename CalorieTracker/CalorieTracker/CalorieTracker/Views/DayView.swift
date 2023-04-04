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
            VStack {
                Text("Oatmeal, 1 cup, 200 cal")
                Text("Apple, 1 medium, 100 cal")
            }
            .padding()
            Spacer()
            Text("Total calories: \(todayCalories.calories)")
                .fontWeight(.bold)
        }
       
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
            .environmentObject(DayCalories())
    }
}
