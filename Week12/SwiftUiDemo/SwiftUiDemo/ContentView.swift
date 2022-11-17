//
//  ContentView.swift
//  SwiftUiDemo
//
//  Created by Bennett Lee on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    
    @State var color = Color.black
    
    @State var names = ["John", "Bennett", "Alex", "Samantha"]
    
    var body: some View {
        VStack {
            
            Button("Change Color") {
                color = .green
            }
            
            TextField("Name", text: $name)
                .padding(.vertical, 24.0)
            
            Button("Add Name") {
                names.append(name)
                name = ""
            }
            
            Text(name)
                .foregroundColor(name.count > 2 ? Color.blue : Color.red)
            
            ForEach(names, id: \.self ) { name in
                HStack {
                    Text(name)
                        .foregroundColor(color)
                    Spacer()
                }
                .padding(.leading, 24)
                Divider()
            }
            
            Spacer()
        }
//            Text("Hey everyonegeg")
//                .fontWeight(.heavy)
//                .bold()
//                .font(.largeTitle)
//                .foregroundColor(Color.green)
//
//            Text("Subtitle")
//            Text("More text")
//            HStack {
//                Text("Text 1")
//                Spacer()
//                Text("Text 2")
//            }
//                .background(Color.blue)
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
