//
//  ButtonExamples.swift
//  UIDesign
//
//  Created by joao camargo on 06/05/21.
//

import SwiftUI

struct ButtonExamples: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("HEADER")
            Button(action: {
                print("pressed")
            }, label: {
                HStack {
                    Text("PRESS")
                    Text("here")//.font(.system(.title))
                }
            })
            
            
            Button(action: {}){
                Text("Default")
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {}){
                Text("Default")
            }.buttonStyle(BorderlessButtonStyle())
            
            Button(action: {
                print("enabled button presed")
            }) {
                Text("simple button style")
            }.buttonStyle(SimpleButtonStyle())
            
            Button(action: {
                print("enabled button presed")
            }) {
                Text("advanced button style")
            }.buttonStyle(AdvancedButtonStyle())
            
            Button(action: {
                print("enabled button presed")

            }) {
                Text("advanced button style")
            }.buttonStyle(AdvancedButtonStyle(color: Color("Primary"), isEnabled: true))
            
            Button(action: {
                print("disabled button presed")
            }) {
                Text("advanced button style disabled")
            }.buttonStyle(AdvancedButtonStyle(color: Color("Primary"), isEnabled: false))
            
        }
        
        
    }
}

struct ButtonExamples_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExamples()
    }
}


