//
//  StyleGuideColors.swift
//  UIDesign
//
//  Created by joao camargo on 02/05/21.
//

import SwiftUI


let accentGradient = LinearGradient(gradient: Gradient(colors: [Color("Accent"), Color("Primary")]), startPoint: .topLeading, endPoint: .bottomTrailing)

let primaryGradient = LinearGradient(gradient: Gradient(colors: [Color("Primary"),Color("Secondary")]), startPoint: .topLeading, endPoint: .bottomTrailing)

let grayGradient = LinearGradient(gradient: Gradient(colors: [Color("Gray2")]), startPoint: .topLeading, endPoint: .bottomTrailing)

struct StyleGuideColors: View {
    var body: some View {
        ZStack {
            Color("Background1")
                .ignoresSafeArea()
            VStack(alignment: .trailing){
                
                Text("Color Styles")
                
                VStack {
                    ColorView(color: "Accent")
                    ColorView(color: "Primary")
                    ColorView(color: "Secondary")
                    ColorView(color: "Tertiary")
                }
                
                VStack {
                    
                    ColorView(color: "Gray1")
                    ColorView(color: "Gray2")
                    ColorView(color: "Gray3")
                    ColorView(color: "Gray4")
                }
                
                
                VStack {
                    Text("my background is 2").padding().background(Color("Background2"))
                    
                    Text("my background is 3").padding().background(Color("Background3"))
                }.padding().background(Color("Background2"))
                
                
                VStack {
                    HStack{
                        Text("acccentGradient")
                        accentGradient.frame(width: 100, height: 50)
                    }
                    
                    HStack{
                        Text("primaryGradient")
                        primaryGradient.frame(width: 100, height: 50)
                    }
                    
                    
                    
                }
                
                
                // Text("my background is 3").padding().background(Color("Background3"))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color("Background1"))//.edgesIgnoringSafeArea(.all)
        }
    }
}

struct StyleGuideColors_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StyleGuideColors()
            StyleGuideColors().environment(\.colorScheme, .dark)
        }
    }
}

struct ColorView: View {
    
    let color: String
    
    var body: some View {
        HStack(spacing: 20){
            Text(color)
            
            Text("bla bla").foregroundColor(Color(color))
            
            Color(color).frame(width: 100, height: 30)
        }
    }
}
