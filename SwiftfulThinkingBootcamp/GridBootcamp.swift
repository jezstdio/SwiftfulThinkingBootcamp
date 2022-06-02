//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 02..
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        /*
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
         */
        
        /*
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
         */
    
    /*
        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
     */
    
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            /*
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 50)
                }
            }
             */
            
            Rectangle()
                .fill(Color.cyan)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) {
                Section(header:
                    Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 150)
                    }
                }
                Section(header:
                    Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 150)
                    }
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
