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
                
                Text("Building a Community Together")
                    .font(.title3)
                   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                   .foregroundColor(.orange)
               
                
                Image(systemName: "hands.clap.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180, height:180)
                
                
                Spacer()
                
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
                        destination: CommunityView(),
                        label: {
                            Image(systemName: "hands.clap.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:50, height:50)
                        })
                    
                    NavigationLink(
                        destination: HealthHabitsView(),
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
                
            }//End Point VSTACK
            .navigationTitle("⚕️Community")
            
            
        }//End Point Navigation View
    }//End Point Body
}//End Point Struct

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
