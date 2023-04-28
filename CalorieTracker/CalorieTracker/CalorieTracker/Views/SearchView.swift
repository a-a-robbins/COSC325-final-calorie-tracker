//
//  SearchView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/27/23.
//
//  Courtesy of Stephan Dowless on YouTube

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var names = ["Goku", "Gohan", "Vegeta", "Trunks", "Cell", "Frieza"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    Text(name)
                }
            }
            .navigationTitle("Contacts")
            .searchable(text: $searchText, placement: .automatic, prompt: "Search contacts...")
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter({ $0.contains(searchText) })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
