//
//  CommunityView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct CommunityView: View {
    
    
    var body: some View {
        
        VStack {
            
            Text("Building a Community Together")
                .font(.title3)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
            
            
            Spacer()
            
            HStackBottomView()
            
            
            
        }//End Point VSTACK
        .navigationTitle("⚕️Community")
        
        
        
    }//End Point Body
}//End Point Struct

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}


