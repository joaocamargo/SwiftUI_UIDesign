//
//  GradientExamples.swift
//  UIDesign
//
//  Created by joao camargo on 03/05/21.
//

import SwiftUI

struct GradientExamples: View {
    
    
    let gradient1 = Gradient(colors: [Color("Accent"), Color("Primary")])
    
    let rainbowGradient = Gradient(colors: [Color.red, Color.orange, Color.yellow,Color.green, Color.blue])
    
    let gradient3 = Gradient(stops: [Gradient.Stop(color: Color("Accent"),location: 0.5),
                                     .init(color: Color("Primary"),location: 0.8)])
    
    
    
    var body: some View {
        
        VStack{
            Text("Gradients").font(.title)
            
            Text("Linear")
            
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: UnitPoint(x: 0.9, y: 0), endPoint: .trailing)
              
                
                LinearGradient(gradient: gradient1, startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: rainbowGradient, startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: gradient3, startPoint: .leading, endPoint: .trailing)
            }.frame(maxHeight: 500)
                
            
            Text("Radial")
            VStack{
            RadialGradient(gradient: rainbowGradient, center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300)
            }
            
            Text("Angular")
            
            VStack{
                AngularGradient(gradient: rainbowGradient, center: .center,angle: Angle(degrees: 45))
                
                AngularGradient(gradient: gradient1, center: .center, angle: Angle(degrees: 0))
                
                AngularGradient(gradient: gradient1, center: .center, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 180))
            }
            
            VStack{
                Text("colors").foregroundColor(.white).padding().background(LinearGradient(gradient: gradient3, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)).cornerRadius(10)
                
                RadialGradient(gradient: rainbowGradient, center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300).mask(Circle())
                
                
                Text("gradient").padding().border(AngularGradient(gradient: rainbowGradient, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/),width: 5)
            }
            
        }.padding()
    }
}

struct GradientExamples_Previews: PreviewProvider {
    static var previews: some View {
        GradientExamples().previewLayout(.fixed(width: 300, height: 1200))
    }
}
