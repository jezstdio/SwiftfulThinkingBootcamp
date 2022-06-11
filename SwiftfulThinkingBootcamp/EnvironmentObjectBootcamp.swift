//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 10..
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "Macbook", "iPod", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { device in
                    NavigationLink {
                        //DetailView(selectedItem: device, viewModel: viewModel) // @ObservedObject
                        DetailView(selectedItem: device) // environmentObject
                    } label: {
                        Text(device)
                    }

                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel) // all the subviews will get this
    }
}

struct DetailView: View {
    
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel // not even in use
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                NavigationLink {
                    //FinalView(viewModel: viewModel) // @ObservedObject
                    FinalView() // environmentObject
                } label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            }
        }
    }
}

struct FinalView: View {

    //@ObservedObject var viewModel: EnvironmentViewModel // @ObservedObject, subview in subview... what a chain.
    @EnvironmentObject var viewModel: EnvironmentViewModel // environmentObject

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.cyan, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(viewModel.dataArray, id: \.self) { device in
                        Text(device)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
