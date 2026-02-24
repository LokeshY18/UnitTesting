//
//  ContentView.swift
//  UnitTesting
//
//  Created by Lokesh Yarashi on 18/02/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = UnitTestingViewModel()
    @State var textFieldtext: String = ""
    @State var alertMessage: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(viewModel.tasks,id: \.self) { task in
                        NavigationLink(destination: NavigationView()) {
                            HStack {
                                Text(task)
                            }
                        }
                }
                HStack {
                    TextField("new task", text: $textFieldtext)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding()
                        .background(.gray.opacity(0.7))
                        .cornerRadius(25)
                    Button {
                        if textFieldtext.isEmpty {
                            alertMessage.toggle()
                        } else {
                            viewModel.addItems(task: textFieldtext)
                            textFieldtext = ""
                        }
                    } label: {
                        Text("Add Task")
                            .foregroundStyle(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(25)
                    }.alert(isPresented: $alertMessage) {
                        return Alert(title: Text("This Field can not be empty!!"))
                    }
                    
                }
            }.padding()
        }
            .navigationTitle("Tasks")
    }
    }


struct NavigationView: View {
    var body: some View {
        VStack{
           Text("NavigationView")
            Text(Image(systemName: "heart.fill"))
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    ContentView()
}
