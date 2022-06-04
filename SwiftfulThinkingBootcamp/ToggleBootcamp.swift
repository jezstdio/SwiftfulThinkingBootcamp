//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: \(isToggleOn ? "Online" : "Offline")")
            }
            Toggle(isOn: $isToggleOn) {
                Text("Current Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .purple))
        .padding(.horizontal, 48)
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
