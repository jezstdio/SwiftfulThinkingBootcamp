//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 11..
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 24) {
            Text(currentUserName ?? "Add name here")
            
//            if let userName = currentUserName {
//                Text(userName)
//            }
            
            Button("Save".uppercased()) {
                let name = "jezstdio"
                
                currentUserName = name
                
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
