//
//  HStackBottomView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

struct HStackBottomView: View {
    var body: some View {
        //HSTACK links to screens - located bottom of the screen
        HStack{
            Spacer()
            NavigationLink(
                destination: ContentView(),
                label: {
                    Image(systemName: "house.circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50, height:50)
                })
            
            NavigationLink(
                destination: CommunityView1(),
                label: {
                    Image(systemName: "hands.clap.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50, height:50)
                })
            
            NavigationLink(
                destination: HabitView(category: Category.HealthHabits,
                                              originalFrameworks: MockData.frameworks),
                label: {
                    Image(systemName: "heart.circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50, height:50)
                })
            
            NavigationLink(
                destination: MindfulnessView(),
                label: {
                    Image(systemName: "face.smiling")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50, height:50)
                })
            
            NavigationLink(
                destination: PhysicalActivityView(),
                label: {
                    Image(systemName: "bicycle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50, height:50)
                })
            Spacer()
        }//End Point HStack
        .padding()
    }
}

struct HStackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        HStackBottomView()
    }
}
