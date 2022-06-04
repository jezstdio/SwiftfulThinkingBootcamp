//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World!") {
                    MyOtherScreen()
                }
                
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.large) // .automatic, .inline, .large
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink {
                    MyOtherScreen()
                } label: {
                    Image(systemName: "gear")
                })
            .accentColor(.red)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here!") {
                    Text("Third screen")
                }
            }
        }
    }
    
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
