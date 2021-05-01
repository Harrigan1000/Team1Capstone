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
    @State private var showModalScreen = false
    
    
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
                HStackBottomView()
            }
            .padding()
            
            
        }//VSTACK END POINT
        .sheet(isPresented: $showModalScreen) {
            Text("Hi, I'm in a modal view")
        }
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
