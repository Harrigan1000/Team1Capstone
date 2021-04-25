//
//  ContentView.swift
//  Consciosnes App
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                VStack {
                    Text("A Mind and Body Health App")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                    
                    Image(systemName: "at.circle.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:120, height:120)
                }.padding()
                .navigationTitle("⚕️ Consciousness")
                
                Group{
                    NavigationLink(
                        destination: CommunityView1(),
                        label: {
                            Text("Community")
                        })
                        .padding(.leading)
                        .padding(5)
                        .font(.title)
                    
                    NavigationLink(
                        destination: HealthHabitsView(),
                        label: {
                            Text("Health Habits")
                        })
                        .padding(.leading)
                        .padding(5)
                        .font(.title)
                    
                    NavigationLink(
                        destination: MindfulnessView(),
                        label: {
                            Text("Mindfulness")
                        })
                        .padding(.leading)
                        .padding(5)
                        .font(.title)
                    
                    NavigationLink(
                        destination: PhysicalActivityView(),
                        label: {
                            Text("Physical Activity")
                        })
                        .padding(.leading)
                        .padding(5)
                        .font(.title)
                    Spacer()
                }
                
                
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
                
                Spacer()
            }//End Point VStack
        }//End Point Navigation View
    }//End Point Body
}//End Point Struct



// Mark Preview:
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

