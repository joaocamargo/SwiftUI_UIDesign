//
//  ColorExamples.swift
//  UIDesign
//
//  Created by joao camargo on 02/05/21.
//

import SwiftUI

struct ColorExamples: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Color("Accent").frame(width: 100, height: 50)
            Color("Primary").frame(width: 100, height: 50)
            Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)).frame(width: 100, height: 50)
            
            Text("Example").background(Color("Primary"))

            RoundedRectangle(cornerRadius: 20).fill(Color("Accent")).frame(width: 100, height: 50)

            RoundedRectangle(cornerRadius: 20).stroke(Color("Accent")).frame(width: 100, height: 50)

            Button(action: {}) {
                Text("Test color")
            }
        }.accentColor(Color("Accent"))
    }
}

struct ColorExamples_Previews: PreviewProvider {
    static var previews: some View {
        ColorExamples()
    }
}
