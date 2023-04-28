//
//  SearchFoodView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/27/23.
//

import SwiftUI

struct SearchFoodView: View {
//    @State private var food = FoodItem()

    var body: some View {
        NavigationView {
            FoodList()
//                .searchable(text: $food.name)
        }
    }
}

struct SearchFoodView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFoodView()
    }
}
