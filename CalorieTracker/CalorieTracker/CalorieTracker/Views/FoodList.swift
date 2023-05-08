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
        
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(searchResults) {
                    food in
                    HStack {
                        FoodRow(food: food)
                        Button {
                            dayCalories.addFoodItem(food)
                        } label: {
                            Image(systemName: "plus.circle")
                        }
                    }
                }
            }
            .searchable(text: $searchText, placement: .automatic)
        }

    }
    
    var searchResults: [FoodItem] {
        if searchText.isEmpty {
            return filteredFoods
        } else if(showFavoritesOnly) {
            return filteredFoods.filter({ $0.name.contains(searchText) })
        }  else {
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
