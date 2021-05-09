//
//  CustomShapeDrawings.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct CustomShapeDrawings: View {
    var body: some View {
        
        VStack{
            //MyShape().stroke(Color.red,lineWidth: 5).frame(width: 200, height: 200).border(Color.gray)
            Arrow(tipAmount: 0.2,isHorizontal: true).stroke(Color.red,lineWidth: 5).frame(width: 300, height: 100).border(Color.gray)
            Arrow(tipAmount: 0.2,isHorizontal: false).stroke(Color.red,lineWidth: 5).frame(width: 100, height: 300).border(Color.gray)
            
            ZStack {
                Arrow(tipAmount: 0.2,isHorizontal: true).stroke(Color.gray).frame(height: 20)
                Arrow(tipAmount: 0.2,isHorizontal: false).stroke(Color.gray).frame(width: 20)
            }.frame(width: 300, height: 300)
            
            
            EmptyArrow(isVertical: true).stroke(Color.gray,lineWidth: 5).frame(width: 300, height: 100)
        }.frame(width: 300, height: 300)
    }
}

struct CustomShapeDrawings_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeDrawings()
    }
}

struct MyShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x:0, y:0))
        path.addLine(to: CGPoint(x:20, y: rect.height / 2))
        path.addRect(CGRect(x: 20, y: 20, width: 30, height: 30))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.height), control: CGPoint(x: 20, y: rect.height))
        return path
    }
    
}

struct Arrow: Shape {
    
    let tipAmount: CGFloat
    let isHorizontal: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        if isHorizontal {
            path.move(to: CGPoint(x: 0, y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width * ( 1 - tipAmount), y: 0))
            path.move(to: CGPoint(x: rect.width, y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width * ( 1 - tipAmount), y: rect.height))

        } else {
            path.move(to: CGPoint(x: rect.width / 2, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width / 2 , y: 0))
            path.addLine(to: CGPoint(x: 0, y: tipAmount * rect.height))
            path.move(to: CGPoint(x: rect.width / 2, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: tipAmount * rect.height))
        }


        return path
    }
}

struct EmptyArrow: Shape {
    
    let isVertical: Bool
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.width
            let height = rect.height
            
            // 2.
            if isVertical {
                path.addLines( [
                    CGPoint(x: 0, y: height * 0.8),
                    CGPoint(x: 0, y: height * 0.2),
                    CGPoint(x: width * 0.8, y: height * 0.2),
                    CGPoint(x: width * 0.8, y: 0),
                    CGPoint(x: width, y: height * 0.5),
                    CGPoint(x: width * 0.8, y: height),
                    CGPoint(x: width * 0.8, y: height * 0.8)
                ])
            }else {
                path.addLines( [
                    CGPoint(x: width * 0.4, y: height),
                    CGPoint(x: width * 0.4, y: height * 0.4),
                    CGPoint(x: width * 0.2, y: height * 0.4),
                    CGPoint(x: width * 0.5, y: height * 0.1),
                    CGPoint(x: width * 0.8, y: height * 0.4),
                    CGPoint(x: width * 0.6, y: height * 0.4),
                    CGPoint(x: width * 0.6, y: height)
                    
                ])
            }
            // 3.
            path.closeSubpath()
        }
    }
}
