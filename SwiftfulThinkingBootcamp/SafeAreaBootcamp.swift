//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 02..
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .ignoresSafeArea(edges: .all)
         */
        
        /*
        ZStack {
            // background
            Color.blue
                .ignoresSafeArea(edges: .all)
            
            // foregraound
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
         */
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.cyan
                .ignoresSafeArea(edges: .all) // for me, this isn't even required to add to this background for some reason
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
