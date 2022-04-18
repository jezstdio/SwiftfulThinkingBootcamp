//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 18..
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red) // in this order, it sets the text's background
            .frame(
                minWidth: 0, // sets the minimum width
                maxWidth: .infinity, // sets the maximum width: px or .infinity
                minHeight: 0, // sets the minimum height
                maxHeight: .infinity, // sets the maximum height
                alignment: .center // .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
            )
            /*
                .frame(
                    width: 300, // set the frame's width in px
                    height: 300, // set the frame's height in px
                    alignment: .center // .center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomLeading, .bottomTrailing
                )
             */
            .background(Color.black) // in this order, it sets the frame's background
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
