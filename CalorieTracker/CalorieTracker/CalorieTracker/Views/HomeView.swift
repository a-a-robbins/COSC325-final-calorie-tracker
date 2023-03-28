//
//  HomeView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct HomeView: View {
    //@EnvironmentObject var todayCalories: DayCalories
    //let todayCalories = 800
    
    var body: some View {
        let todayCalories = 800
        VStack {
            Text("Awesome Calorie Tracker")
                .font(.title)
                .bold()
            Spacer()
            Text("Today's Calories")
                .padding()
            Text("800")
                .padding()
                .border(.blue)
            Spacer()
            Text("Calories Remaining")
            Text("1200")
                .padding()
                .border(.blue)
            Spacer()
            Image(systemName:("plus.circle"))
            Text("Add Item")
        }
        .font(.title2)
        .foregroundColor(.blue)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
