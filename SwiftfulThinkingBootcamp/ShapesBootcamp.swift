//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 08..
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        // Circle() // Creates a circle
        // Ellipse() // Creates an ellipse
        // Capsule(style: .circular) // like ellipse, but has style: .circular, .continuous
        //Rectangle()
        RoundedRectangle(cornerRadius: 50) // like rectangle, but has corner radius
            // .fill(Color.blue) // fill with blue color
            // .foregroundColor(.pink) // same as fill
            // .stroke() // add border
            // .stroke(Color.orange) // add orange border
            // .stroke(Color.blue, lineWidth: 16) // add blue border with 16px width
            /*
                .stroke(Color.red, style: StrokeStyle(
                    lineWidth: 16, // line's width
                    lineCap: .round, // .square, .butt, .round
                    dash: [19]
                ))
             */
            // .trim(from: 0.0, to: 0.5) // cut from the circle. You can make a loading circle with that.
            .frame(width: 200, height: 100) // set's shape's container
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
