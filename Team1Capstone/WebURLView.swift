//
//  WebURLView.swift
//  BarCodeScanner
//
//  Created by Bernard Harrigan on 5/4/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct WebURLView: View {
    
    
    var body: some View {
       
            
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .bottomTrailing, endPoint: .topLeading)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                VStack {
                    
                    
                    NavigationLink(
                        destination:
                            ShowWebView(url: URL(string:"https://meal-preparation.my-free.website/breakfast")!),
                           
                        label: {
                            Text("Breakfast")
                        }).padding()
                        .padding(.leading)
                        .font(.largeTitle)
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(
                        destination: ShowWebView(url: URL(string:"https://meal-preparation.my-free.website/lunch")!),
                        label: {
                            Text("Lunch")
                        }).padding()
                        .padding(.leading)
                        .font(.largeTitle)
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(
                        destination: ShowWebView(url: URL(string:"https://meal-preparation.my-free.website/dinner")!),
                        label: {
                            Text("Dinner")
                        }).padding()
                        .padding(.leading)
                        .font(.largeTitle)
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(
                        destination: ShowWebView(url: URL(string:"https://meal-preparation.my-free.website/snack")!),
                        label: {
                            Text("Snack")
                                .padding(.leading)
                                .font(.largeTitle)
                                .frame(width: 280, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        })
                    Spacer()
                  
                }
               
            }
       
        
        
        }
    }

    // This view should be in a seperate file but is shown here in the same file for simplicity.
    struct ShowWebView: View {
        var url: URL
        var body: some View {
            SwiftUIWebView(url: url)
        }
    }

    struct WebURLView_Previews: PreviewProvider {
        static var previews: some View {
            WebURLView()
        }
    }
