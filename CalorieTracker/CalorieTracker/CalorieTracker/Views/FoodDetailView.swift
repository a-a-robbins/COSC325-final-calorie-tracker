//
//  AddFavorite.swift
//  CalorieTracker
//
//  Created by ARobbins on 5/5/23.
//

import SwiftUI

struct FoodDetailView: View {
    @EnvironmentObject var dayCalories: DayCalories
    @EnvironmentObject var modelData: ModelData
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Food Detail")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Choose a food from the following options: ")
                    .padding(.top)
                Spacer()
                Divider()
                List {
                    ForEach(searchResults) {
                        food in
                        NavigationLink {
                            SingleFoodView(food: food)
                        } label: {
                            FoodRow(food: food)
                        }
                    }
                }
            }
        }
        .navigationTitle("Food Detail")
        
        
//        NavigationView {
//            VStack {
//                Text("Food Detail")
//                    .font(.largeTitle)
//                    .foregroundColor(.blue)
//                Text("Choose a food from the following options: ")
//                    .padding(.top)
//                Spacer()
//                Divider()
//
    }


    var searchResults: [FoodItem] {
        if searchText.isEmpty {
            return modelData.foods
        } else  {
            return modelData.foods.filter({ $0.name.contains(searchText) })
        }
    }
}

struct AddFavorite_Previews: PreviewProvider {
    static var previews: some View {
       FoodDetailView()
            .environmentObject(DayCalories())
            .environmentObject(ModelData())
    }
}
