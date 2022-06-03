//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 03..
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = true
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/ : "Bye, World!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 24 : 8)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 500 : 50
                )
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
