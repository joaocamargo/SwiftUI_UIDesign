//
//  StyleGuideCard.swift
//  UIDesign
//
//  Created by joao camargo on 05/05/21.
//

import SwiftUI

struct Card: ViewModifier {
    public func body(content: Content) -> some View {
        return content.padding().background(Color("Background2"))
        .cornerRadius(10).modifier(EShadow(elevation: .high))
    }
}

struct AccentCard: ViewModifier {
    public func body(content: Content) -> some View {
        return content.padding().background(Color("Background3"))
        .cornerRadius(5).modifier(EShadow(elevation: .low))
    }
}

struct StyleGuideCard: View {
    var body: some View {
        
        
        HStack {
            Text("Card Modifier").modifier(Card())
            Text("AccentCardModifier").modifier(AccentCard())
        }
    }
}

struct StyleGuideCard_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideCard()
    }
}
