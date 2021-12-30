//
//  Lists.swift
//  WorldScramle
//
//  Created by Vahtee Boo on 30.12.2021.
//

import SwiftUI

struct ContentView2: View {
    
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
        VStack(spacing: 0) {
            
//            if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt")
//
//                if let fileContents = try? String(contentsOf: fileURL) {
//
//            }
                
            List(people, id: \.self) {
                Text($0)
            }
            
            List {
                Section("Section 1") {
                    Text("Static row 1")
                    Text("Static row 2")
                }
                
                Section("Section 2") {
                    ForEach(0..<5) {
                        Text("Dynamic row \($0)")
                    }
                }
                
                Section("Section 3") {
                    Text("Static row 3")
                    Text("Static row 4")
                }
            }
            .listStyle(.sidebar)
            List(0 ..< 3) { item in
                Text("Hello, world! \(item)")
            }
            List(0 ..< 3) {
                Text("Hello, world! \($0)")
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

