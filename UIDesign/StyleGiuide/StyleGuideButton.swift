//
//  StyleGuideButton.swift
//  UIDesign
//
//  Created by joao camargo on 07/05/21.
//

import SwiftUI

struct StyleGuideButton: View {
    var body: some View {
        VStack(spacing: 30){
            
            Button(action: {}) {
                Text("SimpleButtonStyle")
            }.buttonStyle(SimpleButtonStyle(isDisabled: false))
            
            Button(action: {}) {
                Text("SimpleButtonStyle")
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

struct StyleGuideButton_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideButton()
    }
}


struct SimpleButtonStyle: ButtonStyle {
    
    var isDisabled: Bool = true
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label.modifier(BodyText()).foregroundColor(.white)
            .padding().background(isDisabled ? grayGradient.cornerRadius(5) : accentGradient.cornerRadius(5))
            .modifier(EShadow(elevation: configuration.isPressed ? .low : .middle))
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
    var isEnabled: Bool = true
    
    ///
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(isEnabled ? color : Color("Gray2")).padding()
            .modifier(Header3()).background(Color("Background3")).cornerRadius(5).modifier(EShadow(elevation: .middle))
            .onTapGesture {
                if isEnabled {
                    configuration.trigger()
                }
            }
        //configuration.trigger()
    }
}
