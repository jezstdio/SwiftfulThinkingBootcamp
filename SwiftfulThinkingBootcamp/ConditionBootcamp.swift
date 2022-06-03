//
//  ConditionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 03..
//

import SwiftUI

struct ConditionBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle button: \(showCircle.description)") {
                showCircle.toggle()
            }

            Button("Rectangle button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 24.0)
                    .frame(width: 100, height: 100)
            }
            
            Spacer()
        }
    }
}

struct ConditionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionBootcamp()
    }
}
