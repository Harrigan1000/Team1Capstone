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
            VStack(alignment: .leading) {
                
                VStack {
                    TextField("Consciousness", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                        .padding([.leading, .bottom, .trailing])
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    TextField("A Mind and Body Health App", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        
                        
                    
                }
                Group{
                NavigationLink(
                    destination: CommunityView(),
                    label: {
                        Text("Community")
                    })
                    .padding(.leading)
                    .padding()
                    .font(.title)
                
                NavigationLink(
                    destination: HealthHabitsView(),
                    label: {
                        Text("Health Habits")
                    })
                    .padding(.leading)
                    .padding()
                    .font(.title)
                
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text("Mindfulness")
                    })
                    .padding(.leading)
                    .padding()
                    .font(.title)
                
                NavigationLink(
                    destination: PhysicalActivityView(),
                    label: {
                        Text("Physical Activity")
                    })
                    .padding(.leading)
                    .padding()
                    .font(.title)
                Spacer()
                }
                
                
                
                
                
            }
            
            
        
            
        }//End Point Navigation View
    }//End Point Body
}//End Point Struct



// Mark Preview:
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
