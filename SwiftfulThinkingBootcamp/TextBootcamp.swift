//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 04. 08..
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftul Thinking Bootcamp. I am really enjoying this course and learning alot.")
            // .font(.largeTitle) // .largeTitle, .title, .title2, .title3, .headline, .subheadline, .body, .callout, .footnote, .caption, .caption2
            // .font(.system(size: 24, weight: .semibold, design: .rounded)) // set font's size, weight and family. Designs: .serif, .monospaced, .default, .rounded
            // .fontWeight(.ultraLight) // .ultraLight, .thin. light, .regular, .medium, .semibold, .bold, .heavy, .black
            // .bold() // same as .fontWeight(.bold)
            // .underline() // underline text
            // .underline(true, color: Color.red) // underline text with red color
            // .italic() // italic text
            // .strikethrough() // strike through text
            // .strikethrough(true, color: Color.green) // strike through text with green color
            // .baselineOffset(24.0) // line spacing + additional spacing to bottom (positive value) or top (negative value)
            // .kerning(5.0) // character spacing
            // .multilineTextAlignment(.center) // .leading, .center, .trailing
            // .foregroundColor(Color.blue) // font color
            .frame(width: 200, height: 100, alignment: .center) // set text's container. alignments: .leading, .center, .trailing
            .minimumScaleFactor(0.1) // the font will automatically resize to the given percentage if doesn't fit into it's frame. 1.0 is 100%
        
        // Text("Hello World".lowercased()) // lowercase all characters
        // Text("Hello World".uppercased()()) // uppercase all characters
        // Text("Hello World".capitalized) // make every first character into uppercase
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
