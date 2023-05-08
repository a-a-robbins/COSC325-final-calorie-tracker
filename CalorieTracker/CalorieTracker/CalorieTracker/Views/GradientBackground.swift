//
//  GradientBackground.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/18/23.
//

import SwiftUI

struct GradientBackground: View {
    
    var gradient: Gradient {
//        let color1 = Color(.blue)
        let color3 = Color(red: 0.7, green: 0.8, blue: 0.99)
        
        let color2 = Color(.white)
        
        
        return Gradient (
         stops: [
            Gradient.Stop(color: color3, location:0),
            Gradient.Stop(color: color2, location: 0.99)
         ])
    }
    var body: some View {
        
        LinearGradient(
            gradient: gradient,
            startPoint: .top,
            endPoint: .bottom
        )
            .ignoresSafeArea()
//            .opacity(0.25)
    }
}

struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground()
    }
}
