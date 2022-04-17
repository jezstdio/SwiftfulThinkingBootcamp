//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 10..
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill") // for more icons, use SF Symbols: https://developer.apple.com/design/resources/
            .renderingMode(.original) // set rendering mode, if there us multicolored icon: .original, .template
            .resizable() // combined with frame, you can give the width and height
            .aspectRatio(contentMode: .fit) // set the icon's aspect ratio: .fill, .fit
            // .scaledToFill() // same as .aspectRatio(contentMode: .fill)
            // .scaledToFit() // same as .aspectRatio(contentMode: .fit)
            // .font(.body) // set icon's size as font
            // .font(.system(size: 24)) set icon's size with 24px
            .foregroundColor(.red)
            .frame(width: 300, height: 300) // combine it with .resizable() to set the width and height
            // .clipped() // cut the content outside of frame
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
