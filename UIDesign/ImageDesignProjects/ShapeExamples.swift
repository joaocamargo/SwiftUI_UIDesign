//
//  ShapeExamples.swift
//  UIDesign
//
//  Created by joao camargo on 08/05/21.
//

import SwiftUI

struct ShapeExamples: View {
    var body: some View {

        VStack(spacing: 30){
            HStack(spacing: 20){
                Text("Rectangle")
                Rectangle().stroke(Color.red).frame(width:50, height: 50)
            }
            
            HStack(spacing: 20){
                Text("Circle")
                Circle().stroke(Color.red).frame(width:50, height: 50)
            }
            
            HStack(spacing: 20){
                Text("RoundedRectangle")
                RoundedRectangle(cornerRadius: 12).stroke(Color.red).frame(width:50, height: 50)
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)).stroke(Color.red).frame(width:50, height: 50)

            }
            
            HStack(spacing: 20){
                Text("RoundedRectangle")
                RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color.red).frame(width:100, height: 100)
            }
            
            HStack(spacing: 20){
                Text("Ellipse")
                Ellipse().stroke(Color.red).frame(width:100, height: 100)
            }
            
            HStack(spacing: 20){
                Text("Capsule")
                Capsule().stroke(Color.red).frame(width:50, height: 100)
                Capsule().stroke(Color.red).frame(width:100, height: 50)
            }
        }
    }
}

struct ShapeExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeExamples()
    }
}
