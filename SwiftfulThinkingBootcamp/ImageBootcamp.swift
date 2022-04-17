//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 17..
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("training") // add image to assets and call it
            .renderingMode(.template) // set rendering mode, if you want to colorize, set it to .template. You can also set it in the Assets. .original, .template
            .resizable() // combined with frame, you can give the width and height
            .aspectRatio(contentMode: .fill) // set the icon's aspect ratio: .fill, .fit
            // .scaledToFill() // same as .aspectRatio(contentMode: .fill)
            // .scaledToFit() // same as .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300) // combine it with .resizable() to set the width and height
            .foregroundColor(Color.red) // set the image's color. For example, if it's an icon
            // .clipped() // cut the content outside of frame
            // .cornerRadius(32) // set border radius to 32px
            // .cornerRadius(150) // to make a circle, set half of one of the dimensions
            .clipShape(Circle()) // set the image's shape: Circle(), RoundedRectangle(), Ellipse(), Capsule(), Rectangle()
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
