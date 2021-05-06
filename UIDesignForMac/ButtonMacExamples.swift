//
//  ButtonMacExamples.swift
//  UIDesign
//
//  Created by joao camargo on 06/05/21.
//

import SwiftUI

struct ButtonMacExamples: View {
    var body: some View {
        VStack {
            
            ButtonExamples()
            
            Button(action: {}) {
                Text("Link Button Style")
            }.buttonStyle(LinkButtonStyle())
            
            Button(action: {}) {
                Text("bordered Button Style")
            }.buttonStyle(BorderlessButtonStyle())
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct ButtonMacExamples_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMacExamples()
    }
}
