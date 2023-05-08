//
//  AddView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var dayCalories: DayCalories
    @EnvironmentObject var modelData: ModelData
    @State private var searchText = ""
    
    var body: some View {
        

       NavigationView {
           VStack {
               Text("Add Food")
                  .font(.largeTitle)
                  .foregroundColor(.blue)
               Text("Choose your food from the following options: ")
                   .padding(.top)
               Spacer()
               Divider()
               HStack {
                   FoodList()
               }
               Spacer()
               Divider()
           }
                       .padding()
        }
    }
    

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(DayCalories())
            .environmentObject(ModelData())
    }
}
