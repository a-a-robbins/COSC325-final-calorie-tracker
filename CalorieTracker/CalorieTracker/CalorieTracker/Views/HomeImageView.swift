//
//  HomeImageView.swift
//  CalorieTracker
//
//  Created by ARobbins on 5/2/23.
//

import SwiftUI

struct HomeImageView: View {
    var body: some View {
        ZStack {
            Image("healthy-foods")
                .opacity(0.5)
            VStack {
                Text("Welcome to the")
                    .font(.title)
                Text("Awesome Caloire Tracker")
                    .font(.title)
                    .bold()
                Text("Your app is currently loading")
            }
            .background(in: Rectangle())

        }
    }
}

struct HomeImageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeImageView()
    }
}
