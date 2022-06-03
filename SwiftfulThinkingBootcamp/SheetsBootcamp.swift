//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 03..
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(24)
                        .background(Color.white.cornerRadius(24.0))
                }
                // can't use just one. Not each. 
                .sheet(isPresented: $showSheet) {
                    SecondScreen()
                }
                //.fullScreenCover(isPresented: $showSheet) {
                //    SecondScreen()
                //}
            }

        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(24)
            }

        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
