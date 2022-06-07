//
//  onTapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 07..
//

import SwiftUI

struct onTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 24)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(24)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(24)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }


            Spacer()
        }
        .padding(40)
    }
}

struct onTapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onTapGestureBootcamp()
    }
}
