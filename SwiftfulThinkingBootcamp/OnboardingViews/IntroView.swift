//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 11..
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            ).ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)))
            } else {
                OnBoardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
