//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 09..
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0) // Creates rounded rectangle with 25 border radius
            .fill(
                /*
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), // set colors in an array. You can add more than 2
                        startPoint: .topTrailing, // .zero, .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
                        endPoint: .bottomTrailing) // .zero, .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
                 */
                /*
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                        center: .topLeading, // .zero, .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
                        startRadius: 24, // where to start the gradient (px)
                        endRadius: 256 // where to end the gradient (px)
                    )
                */
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                    center: .top, // .zero, .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
                    angle: .degrees(90) // set the gradient's degree: .zero, .degrees()
                )
            )
            .frame(width:300, height: 200) // set container to 300*200
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
