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
        ScrollView {
            Text("Add Food")
                .font(.largeTitle)
            Text("Choose your food from the following options: ")
                .padding(.top)
            Divider()
            VStack(alignment: .leading) {
                HStack {
                    Text("Apple, medium, 100 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                
                HStack {
                    Text("Broccoli, 1 cup, 50 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                HStack {
                    Text("Cheese, 1 oz, 100 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                HStack {
                    Text("Egg, 1 large, 70 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                HStack {
                    Text("French Fries, 1/2 cup, 200 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                HStack {
                    Text("Jam (Grape), 1 Tbsp, 70 cal")
                        .padding()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
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
