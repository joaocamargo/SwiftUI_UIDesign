//
//  AnimationExample.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct AnimationExample: View {
    
    
    @State private var isZoomed: Bool = false
    @State private var rectSize: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).scaleEffect(isZoomed ? 2 : 1)
                .animation(.spring())
                .onTapGesture {
                    self.isZoomed.toggle()
                }
            
            Color.red.frame(width: rectSize, height: rectSize)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2)) {
                self.rectSize = 100
            }
        }
        .onDisappear {
            self.rectSize = 100
        }
    }
}

struct AnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExample()
    }
}
