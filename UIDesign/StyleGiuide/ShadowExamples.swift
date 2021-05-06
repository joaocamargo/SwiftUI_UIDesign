//
//  ShadowExamples.swift
//  UIDesign
//
//  Created by joao camargo on 04/05/21.
//

import SwiftUI

struct ShadowExamples: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle).shadow(radius: 1)
            
            
        RectangleTestView().shadow(radius: 10)
            
            
            RectangleTestView().shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 10, x: 7, y: 7)
            
            
            RectangleTestView().shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5, x: 5, y: 5)
            
            RectangleTestView().shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 5, x: 20, y: 20)

            Color("Accent").frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(colorScheme == .dark ? "Gray1" : "Accent")
                            .opacity(0.5), radius: 20, x: 10, y: 10)
            
            
            VStack{
                Text("Hello")
            }.padding().background(Color("Background2")).cornerRadius(10).shadow(radius: 20)
            
            
        }.padding(40).background(Color("Background1"))
    }
}

struct ShadowExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShadowExamples().previewLayout(.sizeThatFits)//.environment(\.colorScheme, .dark)
    }
}

struct RectangleTestView: View {
    var body: some View {
        Rectangle().frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color("Background3"))
    }
}
