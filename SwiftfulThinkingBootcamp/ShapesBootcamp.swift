//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 08..
//

import SwiftUI

struct ShapesBootcamp: View {
    var progress: Double = 0.00
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(.red, lineWidth: 16)
                .frame(width: 200, height: 200, alignment: .center)
                .rotationEffect(Angle(degrees: 270.0))
            Text("\(String(progress * 100))%")
                .font(.title)
                .bold()
        }
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
