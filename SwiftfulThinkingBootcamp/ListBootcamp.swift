//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["orange", "apple", "banana", "peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete { index in
                        delete(arr: &fruits, index: index)
                    }
                    .onMove {start, end in
                        move(arr: &fruits, start: start, end: end)
                    }
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete { index in
                        delete(arr: &veggies, index: index)
                    }
                    .onMove { start, end in
                        move(arr: &veggies, start: start, end: end)
                    }
                } header: {
                    Text("Veggies")
                }

            }
            
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: add)
    }
    
    func delete(arr: inout [String], index: IndexSet) {
        arr.remove(atOffsets: index)
    }
    
    func move(arr: inout [String], start: IndexSet, end: Int) {
        arr.move(fromOffsets: start, toOffset: end)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
