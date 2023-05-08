//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/26/23.
//
// Search functionality
//  Courtesy of Stephan Dowless on YouTube


import SwiftUI

struct FoodList: View {
    @EnvironmentObject var dayCalories: DayCalories
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var searchText = ""
        
    var filteredFoods: [FoodItem] {
        modelData.foods.filter { food in
            (!showFavoritesOnly || food.is_favorite)
        }
    }

    var body: some View {

//        if(showFavoritesOnly) {
//            List(filteredFoods) { food in
//                HStack {
//                    FoodRow(food: food)
//                    Spacer()
//                    Button {
//                        dayCalories.addFoodItem(food)
//                     } label: {
//                         Image(systemName: "plus.circle")
//                     }
//                    }
//                }
//            .searchable(text: $searchText, placement: .automatic)
//        } else {
            List(searchResults) { food in
                HStack {
                    FoodRow(food: food)
                    Spacer()
                    Button {
                        dayCalories.addFoodItem(food)
                     } label: {
                         Image(systemName: "plus.circle")
                     }
                    }
                }
            .searchable(text: $searchText, placement: .automatic)
//        }
        }
    
    var searchResults: [FoodItem] {
        if searchText.isEmpty {
            return modelData.foods
        } else  {
            return modelData.foods.filter({ $0.name.contains(searchText) })
        }
    }
}

struct FoodList_Previews: PreviewProvider {

    static var previews: some View {
        FoodList()
            .environmentObject(DayCalories())
            .environmentObject(ModelData())
    }
}
