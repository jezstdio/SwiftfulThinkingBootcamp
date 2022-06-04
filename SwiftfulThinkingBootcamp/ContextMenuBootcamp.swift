//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(32)
        .background(backgroundColor.cornerRadius(24))
        .contextMenu {
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }
            
            Button(role: .destructive) {
                backgroundColor = .red
            } label: {
                Text("Report")
            }
        }
        .animation(.linear, value: backgroundColor)
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
