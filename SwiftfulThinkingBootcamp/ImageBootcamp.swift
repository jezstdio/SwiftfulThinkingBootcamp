//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 17..
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("holy_fuck")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 165)
            .clipped()
            .cornerRadius(32)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
