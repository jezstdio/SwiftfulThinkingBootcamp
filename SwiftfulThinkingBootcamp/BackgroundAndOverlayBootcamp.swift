//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 05. 30..
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                //Color.red
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(
                        //Color.blue
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100, alignment: .center)
            )
            .background(
                Circle()
                    .fill(
                        //Color.red
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 120, height: 120, alignment: .center)
            )
         */
        
        /*
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110, alignment: .center)
            )
         */
        
        /*
        Rectangle()
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50),
                alignment: .center)
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150),
                alignment: .center
            )
         */
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 0.5)), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing)
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
