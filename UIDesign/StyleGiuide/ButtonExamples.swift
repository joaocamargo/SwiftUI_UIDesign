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
            
            Button(action: {}) {
                Text("simple button style")
            }.buttonStyle(SimpleButtonStyle())
            
            Button(action: {}) {
                Text("advanced button style")
            }.buttonStyle(AdvancedButtonStyle())
            
            Button(action: {}) {
                Text("advanced button style")
            }.buttonStyle(AdvancedButtonStyle(color: Color("Primary")))
            
        }
        
        
    }
}

struct ButtonExamples_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExamples()
    }
}


struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label.modifier(BodyText()).foregroundColor(.white).padding().background(accentGradient.cornerRadius(5)).modifier(EShadow(elevation: configuration.isPressed ? .low : .middle))
    }
}


struct AdvancedButtonStyle: PrimitiveButtonStyle{
    
    ///no curso é assim
//    let color: Color
//
//    init(color: Color = Color("Accent")){
//        self.color = color
//    }
    
    ///prefiro assim
    
    var color: Color? = Color("Accent")
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.foregroundColor(color).padding()
            .modifier(Header3()).background(Color("Background3")).cornerRadius(5).modifier(EShadow(elevation: .middle))
    }
}
