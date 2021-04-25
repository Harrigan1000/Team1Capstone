//
//  PhysicalActivityView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct PhysicalActivityView: View {
    //Mark Properties:
    
    @State var mainBullets = ["Strength", "Resistance", "Flexibility", "My Movements", "Suggestions to Improve"]
    
    // Mark Body:
    var body: some View {
        NavigationView {
            VStack {
                Text("Taking Care of Mind & Body")
                    .font(.title3)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.orange)
                
                List(mainBullets, id: \.self) {
                    bullets in
                    NavigationLink(
                        destination: MindfulnessView(),
                        label: {
                            Text(bullets)
                        })
                        .padding()
                }
                .navigationTitle("⚕️Physical Activity")
                .foregroundColor(.yellow)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                
                
                
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
            }
            
            
            .padding()
        }//VSTACK END POINT
        .onAppear {
            mainBullets.sort()
        }
    }// NAVIGATIONVIEW END POINT
}// BODY END POINT
// STRUCT END POINT

struct PhysicalActivityView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalActivityView()
    }
}
