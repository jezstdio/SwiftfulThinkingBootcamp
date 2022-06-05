//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 05..
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 5
    @State var color: Color = .black
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.1f", sliderValue)
            )
            //Text("\(sliderValue)")
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.5
            ) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                if sliderValue == 3 {
                    color = .green
                } else {
                    color = .black
                }
            }
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
