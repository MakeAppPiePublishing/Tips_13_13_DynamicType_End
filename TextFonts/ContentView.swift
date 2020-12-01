//
//  ContentView.swift
//  TextFonts
//
//  Created by Steven Lipton on 11/29/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 13 (Q1 2021) video 13
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Dynamic type and Swift UI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView:View {
    @Environment(\.sizeCategory) var sizeCategory
    var body: some View{
        HStack {
            Spacer(minLength: 80)//red
            VStack{
                Text("Lorem ipsum dolor sit amet")
                    .background(Color.green)
                    //.lineLimit(0) NONO
                ScrollView{
                    Text("Lorem ipsum dolor sit amet")
                        .background(Color.green)
                
                }
                if sizeCategory >= .accessibilityLarge {
                    Text("Lorem ipsum dolor sit amet")
                        .font(Font.custom("", fixedSize: 26))
                        .background(Color.green)
                } else {
                    Text("Lorem ipsum dolor sit amet")
                        .background(Color.green)
                }
                Spacer(minLength: 450)//blue
            }.font(.title)
            
            .background(Color.blue)
        }.background(Color.red)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, ContentSizeCategory.large)
    }
}
