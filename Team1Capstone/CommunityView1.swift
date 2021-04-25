//
//  CommunityView1.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible())
]

struct CommunityView1: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                LazyVGrid(columns: columns) {
                    FrameworkTitleView(name: "App Clips", imageName: "arkit", description: "")
                    FrameworkTitleView(name: "App Clips", imageName: "carplay", description: "")
                    FrameworkTitleView(name: "App Clips", imageName: "catalyst", description: "")
                    FrameworkTitleView(name: "App Clips", imageName: "cloudkit", description: "")
                    FrameworkTitleView(name: "App Clips", imageName: "healthkit", description: "")
                    FrameworkTitleView(name: "App Clips", imageName: "metal", description: "")
                }
                Spacer()
                HStackBottomView()
                    .padding()
            }
            .navigationTitle("⚕️Community")
            
        }
    }
}

struct CommunityView1_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView1()
    }
}

// FrameworkTitleView Refactored (This will be used in flexible Grid that will create in community view
struct FrameworkTitleView: View {
    
    let name: String
    let imageName: String
    let description: String
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            Text(description)
                .font(.title2)
            
        }
    }
    
    
}
