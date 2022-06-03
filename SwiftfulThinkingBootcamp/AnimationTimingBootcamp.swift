//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 03..
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.75,
                    blendDuration: 1.0
                ), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.spring(), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.easeIn, value: isAnimating)

            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.easeInOut, value: isAnimating)

            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.easeOut, value: isAnimating)

        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
