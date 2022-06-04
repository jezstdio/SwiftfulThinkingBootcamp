//
//  TexteditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct TexteditorBootcamp: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                // .colorMultiply messes up TextEditor's height
                // .background also messes up TextEditor's height + doesn't work at all
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(16.0)
                }
                
                Text(savedText)
                    .foregroundColor(.blue)
                
                Spacer()
            }
            .padding(.horizontal, 24)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TexteditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TexteditorBootcamp()
    }
}
