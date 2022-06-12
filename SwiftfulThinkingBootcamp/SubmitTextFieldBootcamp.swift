//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 12..
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.route)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.next)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.search)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.done)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.continue)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Something to the console!")
                }
                .submitLabel(.go)
        }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
