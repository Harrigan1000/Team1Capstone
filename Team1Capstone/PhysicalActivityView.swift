//
//  PhysicalActivityView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct PhysicalActivityView: View {
    //Mark Properties:
     
     @State var physicalActivity = ["Strength", "Resistance", "Flexibility", "User Movement"]
     
     // Mark Body:
    
    var body: some View {
        Text("Physical Activity")
    }
}

struct PhysicalActivityView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalActivityView()
    }
}
