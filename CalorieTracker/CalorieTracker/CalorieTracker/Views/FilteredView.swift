////
////  FilteredView.swift
////  CalorieTracker
////
////  Created by ARobbins on 5/5/23.
////
//
//import SwiftUI
//
//
//
//struct FilteredView: View {
//    @EnvironmentObject var dayCalories: DayCalories
//    @State private var searchText = ""
//
//
//    let foods = ModelData().foods
//
//    var filteredFoods: [FoodItem] {
//        foods.filter { food in
//             food.is_favorite
//        }
//    }
//    
//    var body: some View {
//        List(filteredFoods) { food in
//            HStack {
//                FoodRow(food: food)
//                Spacer()
//                Button {
//                    dayCalories.addFoodItem(food)
//                 } label: {
//                     Image(systemName: "plus.circle")
//                 }
//            }
//        }
//        .searchable(text: $searchText, placement: .automatic)
//
//    }
//    
//    var searchResults: [FoodItem] {
//        if searchText.isEmpty {
//            return foods
//        } else  {
//            return foods.filter({ $0.name.contains(searchText) })
//        }
//    }
//}
//
//struct FilteredView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilteredView()
//    }
//}
