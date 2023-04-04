//
//  AddView.swift
//  CalorieTracker
//
//  Created by ARobbins on 3/28/23.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var foodList: FoodList
    
    var body: some View {
        VStack {
            Text("Add Food")
                .font(.largeTitle)
            Text("Choose your food from the following options: ")
                .padding(.top)
            Divider()
            VStack(alignment: .leading) {
                Text("Apple, medium, 100 cal")
                    .padding()
                Text("Broccoli, 1 cup, 50 cal")
                    .padding()
                Text("Cheese, 1 oz, 100 cal")
                    .padding()
                Text("Egg, 1 large, 70 cal")
                    .padding()
                Text("French Fries, 1/2 cup, 200 cal")
                    .padding()
                Text("Jam (Grape), 1 Tbsp, 70 cal")
                    .padding()
            }
            .padding()
            Spacer()
            
            //List(content: foodList.createList())
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(FoodList())
    }
}
