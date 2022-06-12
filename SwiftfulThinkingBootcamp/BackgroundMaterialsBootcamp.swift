//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 12..
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 56, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                //.thinMaterial
                //.thickMaterial
                //.regularMaterial
                //.ultraThickMaterial
                .ultraThinMaterial
            )
            .cornerRadius(24)
        }
        .ignoresSafeArea()
        .background(
            Image("training")
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
