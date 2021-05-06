//
//  StyleGuideTypography.swift
//  UIDesign
//
//  Created by joao camargo on 06/05/21.
//

import SwiftUI


struct Header1: ViewModifier {
    
    @Environment(\.sizeCategory) var sizeCategory
    
    var fontName: String = "Futura"
    
    func body(content: Content) -> some View {
        
        switch sizeCategory {
            case .extraSmall:
                return content.font(.custom(fontName,size:31))
            case .small:
                return content.font(.custom(fontName,size:32))
            case .medium:
                return content.font(.custom(fontName,size:33))
            case .large:
                return content.font(.custom(fontName,size:34))
            case .extraLarge:
                return content.font(.custom(fontName,size:36))
            case .extraExtraLarge:
                return content.font(.custom(fontName,size:38))
            case .extraExtraExtraLarge:
                return content.font(.custom(fontName,size:40))
            case .accessibilityMedium:
                return content.font(.custom(fontName,size:44))
            case .accessibilityLarge:
                return content.font(.custom(fontName,size:48))
            case .accessibilityExtraLarge:
                return content.font(.custom(fontName,size:52))
            case .accessibilityExtraExtraLarge:
                return content.font(.custom(fontName,size:56))
            case .accessibilityExtraExtraExtraLarge:
                return content.font(.custom(fontName,size:60))
        @unknown default:
            return content.font(.custom(fontName,size:35))
        }
    }
}

struct Header2: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title, design: .rounded))
    }
}

struct Header3: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.subheadline, design: .rounded))
    }
}

struct BodyText: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.body, design: .rounded))
    }
}

struct Detail: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.body, design: .rounded)).foregroundColor(Color("Gray3"))
    }
}

struct ErrorMessage: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.body, design: .rounded)).foregroundColor(Color("Error"))
    }
}

struct StyleGuideTypography: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Text("Tipography")
            Text("Large header 1").header1()
            Text("header2").header2()
            Text("header3").header3()
            Text("Body").bodyText()
            Text("Description").detailText()
            Text("Error").errorText()

        })
    }
}

extension Text {
    public func header1() -> some View {
        return modifier(Header1())
    }
}

extension Text {
    public func header2() -> some View {
        return modifier(Header2())
    }
}

extension Text {
    public func header3() -> some View {
        return modifier(Header3())
    }
}

extension Text {
    public func bodyText() -> some View {
        return modifier(BodyText())
    }
}

extension Text {
    public func detailText() -> some View {
        return modifier(Detail())
    }
}

extension Text {
    public func errorText() -> some View {
        return modifier(ErrorMessage())
    }
}

struct StyleGuideTypography_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideTypography()
    }
}
