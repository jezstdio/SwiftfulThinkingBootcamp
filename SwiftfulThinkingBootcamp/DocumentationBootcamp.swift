//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 06..
//

/*
 - Turn on the minimap. It will show you all the MARKs.
 - You can fold multiple line comments or {} sections with option + command + left arrow
 - You can unfold multiple line comments or {} sections with option + command + right arrow
 */

// You can write one line comments

/*
 You
 can
 write
 multliple
 line
 comments
 */

// You can use one line comment to find multi line comments easier when they are closed
/*
 Like
 this
 one
 */

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: Variables
    @State var data: [String] = [
        "Apples", "Oranges", "Peaches", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: Body
    var body: some View { // start: body
        NavigationView { // start: navigationview
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // foreground
                foreground
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("Alert", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is an Alert Title")
            }
            }
        } // end: navigationview
    } // end: body
    
    /// You can add Summary to custom elemenets with 3 /. Now if you push command and click on it, it will shown.
    private var foreground: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { fruit in
                Text(fruit)
                    .font(.headline)
            }
        }
    }
    
    // MARK: Functions
    /// If you use command + click, there will be an "Add Documentation" button.
    ///
    ///: This is the Discussion part, when you can tell what happens.
    ///  ```
    ///  getAlert(text: "Hi!") -> Alert(text: Text("Hi!"))
    ///  ```
    ///  - Warning: This is a warning message.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an Alert() with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: Preview
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
