//
//  ExtractedSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 02..
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Raspberries", count: 34, color: .pink)
        }
    }
}

struct ExtractedSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
