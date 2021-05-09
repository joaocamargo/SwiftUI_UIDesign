//
//  ContentView.swift
//  UIDesign
//
//  Created by joao camargo on 02/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
        Text("Hello, world!")
            .padding()
        }
        
        SignUpView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
        }.environmentObject(AccountManager())
        
    }
}
