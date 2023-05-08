//
//  CalorieTrackerApp.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

@main
struct CalorieTrackerApp: App {
    @StateObject var modelData = ModelData()
    @StateObject var dayCalories = DayCalories()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dayCalories)
                .environmentObject(modelData)
        }
    }
}
