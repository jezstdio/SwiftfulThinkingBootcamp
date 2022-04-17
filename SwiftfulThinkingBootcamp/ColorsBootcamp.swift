//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 09..
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0) // Creates rounded rectangle with 25 border radius
            .fill(
                Color("CustomColor") // set color to "CustomColor", created in Assets
                // Color(#colorLiteral(red: 250, green: 250, blue: 250, alpha: 1.0)) // set color with rgba: Color(#colorLiteral(red:, green:, blue:, alpha:))
                    // You can also Edit > Format > Show Color & Drag&Drop your chosen one.
                // Color(UIColor.secondarySystemBackground) // some + extra color
            )
            .frame(width: 300, height: 200) // set container to 300*200
            //.shadow(radius: 10) // set a 10px shadow
            .shadow(
                color: Color("CustomColor").opacity(0.6), // set color to CustomColor and lower the opacity to 60%
                radius: 16, // set shadow's size to 16px
                x: 0, // move the shadow 0px on the x axis
                y: 8 // move the shadow 8px on the y axis
            )
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            .previewInterfaceOrientation(.portrait)
    }
}
