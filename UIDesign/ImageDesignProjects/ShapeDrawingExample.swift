//
//  ShapeDrawingExample.swift
//  UIDesign
//
//  Created by joao camargo on 08/05/21.
//

import SwiftUI

struct ShapeDrawingExample: View {
    var body: some View {
        
        let gradient = LinearGradient(gradient: Gradient(colors: [Color.red,Color.green ,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
        
        VStack(spacing: 15){
            HStack{
                Capsule().stroke(Color.red).frame(width:100, height: 50)
                
                Capsule().stroke(Color.red,lineWidth: 5).frame(width:100, height: 50)
                
                Capsule().stroke(gradient,lineWidth: 5).frame(width:100, height: 50)

                Capsule().strokeBorder(gradient,lineWidth: 5).frame(width:100, height: 50).border(Color.black)
            }

            HStack{
                
                ForEach(1...3, id: \.self) { number in
                    Capsule().stroke(Color.red,style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .miter, dash: [6,4,1], dashPhase: CGFloat(number))).frame(width:100, height: 50)
                }
            }
            
            HStack {
                
                Capsule().stroke(Color.red,style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .miter, dash: [8], dashPhase: 5)).frame(width:150, height: 100)
            }
            
            HStack{
                Capsule().stroke(gradient).frame(width:100, height:50)

                Capsule().fill(gradient).frame(width:100, height:50)
            }
            
            HStack{
                Capsule().trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.6).stroke(Color.red).frame(width:100, height:50)

                Capsule().trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.5).fill(gradient).frame(width:100, height:50)
            }
        }
    }
}

struct ShapeDrawingExample_Previews: PreviewProvider {
    static var previews: some View {
        ShapeDrawingExample()
    }
}
