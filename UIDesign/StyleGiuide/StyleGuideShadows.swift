//
//  StyleGuideShadows.swift
//  UIDesign
//
//  Created by joao camargo on 05/05/21.
//

import SwiftUI


struct CShadow: ViewModifier {
    func body(content: Content) -> some View {
        return content.shadow(color: .black.opacity(0.2), radius: 20, x: 10, y: 10)
    }
}

extension View {
    public func cShadow() -> some View {
        modifier(CShadow())
    }
}

enum Elevation {
    case low
    case middle
    case high
}

struct EShadow: ViewModifier {
    let elevation: Elevation
    
    func body(content: Content) -> some View {
        
        switch elevation {
        case .low:
            return content.shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
        case .middle:
            return content.shadow(color: .black.opacity(0.15), radius: 10, x: 7, y: 7)
        case . high:
            return content.shadow(color: .black.opacity(0.02), radius: 2, x: 10, y: 10)
        }
    }
}


struct StyleGuideShadows: View {
    var body: some View {
        
        VStack(spacing:10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            RectangleTestView().modifier(CShadow())
            RectangleTestView().cShadow()
            
            RectangleTestView().modifier(EShadow(elevation: .high))
            
        }
    }
}

struct StyleGuideShadows_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideShadows()
    }
}
