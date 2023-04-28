//
//  FoodList.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/26/23.
//

import SwiftUI

struct FoodList: View {
    @EnvironmentObject var dayCalories: DayCalories
    @State private var searchText = ""

    let foods = ModelData().foods

    var body: some View {

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
        }
    
    var searchResults: [FoodItem] {
        if searchText.isEmpty {
            return foods
        } else {
            return foods.filter({ $0.name.contains(searchText) })
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    let foods = ModelData().foods

    static var previews: some View {
        FoodList()
    }
}
