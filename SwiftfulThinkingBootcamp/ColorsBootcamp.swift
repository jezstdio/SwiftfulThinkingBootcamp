//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 09..
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color("CustomColor"))
            .frame(width: 300, height: 200)
        .shadow(color: Color("CustomColor"), radius: 16, x: 0, y: 8)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
