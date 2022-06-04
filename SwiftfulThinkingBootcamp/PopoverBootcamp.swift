//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            // Method 1 - Sheets
            .sheet(isPresented: $showNewScreen) {
                NewScreen()
            }
            
            // Method 2 - Transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // Method 3 - Animation Offset
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    //@Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
                //showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(24)
            }

        }
    }
    
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
