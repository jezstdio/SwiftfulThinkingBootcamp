//
//  BindigBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 02..
//

import SwiftUI

struct BindigBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "New Title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

struct BindigBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindigBootcamp()
    }
}
