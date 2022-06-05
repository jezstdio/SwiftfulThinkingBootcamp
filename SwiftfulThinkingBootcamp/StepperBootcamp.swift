//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 05..
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(width: 50 + widthIncrement, height: 50)
                .animation(.linear, value: widthIncrement)
            
            Stepper("Stepper width") {
                widthIncrement += 10
            } onDecrement: {
                widthIncrement -= 10
            }
            .padding(50)

        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
