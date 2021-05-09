//
//  UsingShapesImages.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct UsingShapesImages: View {
    
    let rainbowGradient = Gradient(colors: [.red,.orange,.yellow,.green,.blue,.red])

        
    var body: some View {
        VStack {
            AngularGradient(gradient: rainbowGradient, center: .center).frame(width: 100, height: 100, alignment:  .center)
                .mask(EmptyArrow(isVertical: true))
            
            AngularGradient(gradient: rainbowGradient, center: .center).frame(width: 100, height: 100, alignment:  .center)
                .mask(Text("gradient"))
            
            
            Image("cat_100x100").mask(Circle())
            
            Image("cat_100x100").mask(Circle().trim(from: 0, to: 0.9)).overlay(Circle().stroke(Color.white,lineWidth: 2).padding(3))

            VStack {
                Image("dog_400x400").resizable().aspectRatio(contentMode: .fill).frame(height: 160, alignment: .top).clipped()
                
                Text("dogs dogs dogs")
            }.frame(width: 200, height: 200, alignment: .top).background(Color("Background2").cornerRadius(10).shadow(radius: 30))
            
        }
    }
}

struct UsingShapesImages_Previews: PreviewProvider {
    static var previews: some View {
        UsingShapesImages()
    }
}
