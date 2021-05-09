//
//  BlurOverlayExample.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI
import LoremSwiftum

struct BlurOverlayExample: View {
    var body: some View {
        VStack{
            Image("cat_100x100").scaledToFill().frame(width: 600, height: 600, alignment: .top)
            Text(Lorem.words(7)).header1()
            Text(Lorem.paragraph).padding()
            
            Spacer()
        }
        .background(Color("Background1"))
        .blur(radius: 10).brightness(-0.2)
        .overlay(Text("Important message").padding().modifier(Card()))
        
    }
}

struct BlurOverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        BlurOverlayExample()
    }
}
