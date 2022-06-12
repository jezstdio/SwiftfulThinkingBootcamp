//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 12..
//

import SwiftUI

// Works only in Lists and TabViews

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello, world!")
                .badge("New items!")
            Text("Hello, world!")
                .badge(1)
            Text("Hello, world!")
                .badge(9999)
        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .badge(8)
            Color.green
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
                .badge(4)
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
                .badge(1)
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
