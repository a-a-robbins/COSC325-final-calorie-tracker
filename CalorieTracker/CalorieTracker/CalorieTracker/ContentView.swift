//
//  ContentView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var foodList: FoodList
    @EnvironmentObject var todayCalories: DayCalories
    
    var body: some View {
        ZStack {
            GradientBackground()
            
            //setting tabView background
            //courtesy: https://www.bigmountainstudio.com/community/public/posts/86559-how-do-i-customize-the-tabview-in-swiftui
            
            VStack {
                Spacer()
                
                Color.blue
                    .frame(height: 100)
            }
            .ignoresSafeArea(edges: .bottom)
            //end Big Mountain Studio code
            
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                AddView()
                    .tabItem {
                        Label("Add Food", systemImage: "plus.circle")
                    }
                DayView()
                    .tabItem {
                        Label("Today's Diary", systemImage: "eye")
                    }
            }
            .toolbarBackground(.blue, for: .tabBar)
        }
        .opacity(0.75)

            
        Spacer()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FoodList())
            .environmentObject(DayCalories())
    }
}
