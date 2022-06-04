//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type here something...", text: $textfieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(8.0))
                    .font(.body)
                
                Button(action: {
                    if validateText(text: textfieldText) {
                        save()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(validateText(text: textfieldText) ? .blue : .gray.opacity(0.3))
                        .cornerRadius(8.0)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!validateText(text: textfieldText))
                
                List {
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func validateText(text: String) -> Bool {
        if text != "" {
            return true
        }
        
        return false
    }
    
    func save() {
        dataArray.append(textfieldText)
        textfieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
