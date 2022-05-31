//
//  PaddingandSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 05. 31..
//

import SwiftUI

struct PaddingandSpacerBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding() // options: .vertical, .horizontal, .all, .top, .bottom, .leading, .trailing
            .background(Color.blue)
         */
        
        /*
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 24)
            .background(Color.red)
         */
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingandSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingandSpacerBootcamp()
    }
}
