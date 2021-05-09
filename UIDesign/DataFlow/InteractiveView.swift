//
//  InteractiveView.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct InteractiveView: View {
    //@ property wrapper - add functionality
    
    @State private var selectedColor: Color = .yellow
    
    @State private var isOn : Bool = true
    @State private var inputText: String = ""
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            Text("selected Color").padding().background(selectedColor)
            
            Button(action: {
                selectedColor = .orange
            }, label: {
                Text("Choose Orange")
            })
            
            YellowButton(selectedColor: $selectedColor)
            
            Toggle(isOn: $isOn){
                Text("switch on")
            }
            
            TextField("add Text", text: $inputText).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("You typed: \(inputText)")
            
        }.padding(20)
    }
}

struct InteractiveView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveView()
    }
}

struct YellowButton: View {
    
    //read and write permission
    @Binding var selectedColor: Color
    
    var body: some View {
        Button(action: {
            self.selectedColor = Color.yellow
        }, label: {
            Text("Choose yellow")
        })
    }
}
