//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 10..
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
