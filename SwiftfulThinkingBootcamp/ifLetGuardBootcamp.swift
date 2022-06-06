//
//  ifLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 07..
//

import SwiftUI

struct ifLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "testuser"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                // if displayText has a value, create a new variable: text
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // Don't use !
                // Don't force unwrap values
                // Text(displayText!)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        // if currentUserID has a value, create a new variable: userID
        if let userID = currentUserID {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Oh my God. There is no User ID!"
            return
        }
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User ID is: \(userID)"
            isLoading = false
        }
    }
}

struct ifLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuardBootcamp()
    }
}
