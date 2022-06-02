//
//  SpacersBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 02..
//

import SwiftUI

struct SpacersBootcamp: View {
    var body: some View {
        /*
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
         */
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
    }
}

struct SpacersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacersBootcamp()
    }
}
