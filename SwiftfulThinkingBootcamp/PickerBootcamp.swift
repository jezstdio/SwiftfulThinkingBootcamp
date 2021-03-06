//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 05..
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String
    
    let filterOptions: [[String]] = [
        ["Most Recent", "clock.fill"],
        ["Most Popular", "person.3.fill"],
        ["Most Liked", "hand.thumbsup.fill"]
    ]
    
    init() {
        selection = filterOptions[0][0]
    }
    
    var body: some View {
//        Picker(selection: $selection, label: EmptyView()) {
//            ForEach(filterOptions.indices, id: \.self) { index in
//                Text(filterOptions[index]).tag(filterOptions[index])
//            }
//        }
//        .pickerStyle(SegmentedPickerStyle())

        
        Menu {
            Picker(
                selection: $selection,
                label: EmptyView()
            , content: {
                ForEach(filterOptions, id: \.self) { filter in
                    HStack {
                        Text(filter[0]).tag(filter[0])
                        Image(systemName: filter[1])
                    }
                }
            })
        } label: {
            Text("Filter: \(selection)")
                .pickerStyle(MenuPickerStyle())
                .font(.headline)
                .accentColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10.0)
                .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 0, y: 10)
        }
        
//        VStack {
//            Text("Age: \(selection)")
//
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
