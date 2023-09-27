//
//  ContentView.swift
//  View
//
//  Created by Oluwapelumi Williams on 27/09/2023.
//

import SwiftUI

struct ContentView : View {
    let color1 = Color(red: 0.0312, green: 0.2969, blue: 0.3789)
    let color2 = Color(red: 0.8555, green: 0.3125, blue: 0.2891)
    let color3 = Color(red: 0.8867, green: 0.7070, blue: 0.0195)
    
    // titleColor is the same as color3
    let titleColor = UIColor(red: 0.8867, green: 0.7070, blue: 0.0195, alpha: 1)
    
    // this initializer is to be able to set the color of the navigationTitle
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]
    }

    var body: some View {
        NavigationView {
            ZStack {
                color1
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
                VStack(alignment: .leading){
                Text("#App feature testing")
                Text("#Test point: Color change of the navigation bar text.")
            }
                .foregroundColor(color3)
                .fontWeight(.bold)
        }
            .navigationTitle(Text("i9 Robotics"))
        } // closing brace of the NavigationView
    } // closing brace of the body
} // closing brace of the ContentView struct

#Preview {
    ContentView()
}
