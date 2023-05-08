//
//  ContentView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @EnvironmentObject var todayCalories: DayCalories
    
    var body: some View {
            ZStack {
                GradientBackground()
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    AddView()
                        .tabItem {
                            Label("Add Food", systemImage: "plus.circle")
                        }
                    FoodDetailView()
                        .tabItem {
                            Label("Food Detail", systemImage: "info.circle")
                        }
                    DayView()
                        .tabItem {
                            Label("Today's Diary", systemImage: "eye")
                        }
                    
                }
                .toolbarBackground(.white, for: .tabBar)
                .opacity(0.50)

            }


    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .environmentObject(DayCalories())
    }
}
