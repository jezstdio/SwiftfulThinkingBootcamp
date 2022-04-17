//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 08..
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("")
            .font(.system(size: 32, weight: .bold, design: .default))
            .background(.red)
            .lineSpacing(-50.0)
            .padding(28.0)
            .frame(width: 200, height: 200, alignment: .trailing)
            .minimumScaleFactor(0.5)
            
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
