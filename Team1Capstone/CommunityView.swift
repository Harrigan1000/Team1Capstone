//
//  CommunityView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Community", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding([.leading, .bottom, .trailing])
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                TextField("A Mind and Body Experience ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text("Community")
                    })
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text("Health Habits")
                    })
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text("Mindfulness")
                    })
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text("Physical Activity")
                    })
                Spacer()
                
            }//End Point VSTACK
        }//End Point Navigation View
    }//End Point Body
}//End Point Struct

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
