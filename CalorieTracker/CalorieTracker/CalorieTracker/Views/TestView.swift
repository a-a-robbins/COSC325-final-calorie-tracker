//
//  TestView.swift
//  CalorieTracker
//
//  Created by ARobbins on 4/21/23.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        let _: Array<String> = getCSVData()
    }
    
}

func getCSVData() -> Array<String> {
    do {
        let content = try String(contentsOfFile: "../Resources/nutrition.csv")
        let parsedCSV: [String] = content.components(
            separatedBy: "\n"
        ).map{ $0.components(separatedBy: ",")[0] }
        return parsedCSV
    }
    catch {
        return ["error parsing file"]
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
