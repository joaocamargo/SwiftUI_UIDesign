//
//  TextFontExamples.swift
//  UIDesign
//
//  Created by joao camargo on 05/05/21.
//

import SwiftUI

struct TextFontExamples: View {
    var body: some View {
        
        HStack(alignment: .top, spacing: 20) {
            VStack(spacing: 10) {
                Text("System fonts")
                Text("Large Titles").font(.largeTitle)
                Text("title").font(.title)
                Text("headline").font(.headline)
                Text("subheadline").font(.subheadline)
                Text("body").font(.body)
                Text("callout").font(.callout)
                Text("footnote").font(.footnote)
                Text("caption").font(.caption)
            }
            
            VStack(alignment: .leading,spacing: 10) {
                Text("black").fontWeight(.black)
                Text("heavy").fontWeight(.heavy)
                Text("bold").fontWeight(.bold)
                Text("semibold").fontWeight(.semibold)
                Text("regular").fontWeight(.regular)
                Text("medium").fontWeight(.medium)
                Text("light").fontWeight(.light)
                Text("thin").fontWeight(.thin)
                Text("ultraLight").fontWeight(.ultraLight)

            }
            
            VStack(alignment: .leading,spacing: 10) {
                Text("italic").italic()
                Text("strikethr").strikethrough()
                Text("underline").underline()
                Text("kerning").kerning(5)
                Text("link").foregroundColor(Color("Accent"))
                Text("detail").foregroundColor(Color("Gray3"))
                Text("error message").foregroundColor(.pink)
            }
            
            VStack(alignment: .leading,spacing: 10){
                Text("Design font default").font(.system(.body, design: .rounded))
                Text("rounded").font(.system(.body,design: .rounded))
                Text("serif").font(.system(.body,design: .serif))
                Text("monospaced").font(.system(.body,design: .monospaced))

            }
            
            VStack(alignment: .leading,spacing: 10) {
                Text("fixed font size").font(.system(size: 20))
                Text("Font Futura").font(.custom("Futura", size: 20))
                Text("view modifier for font").modifier(customFont(fontName: "Futura"))
            }
        }
        
    }
}

struct TextFontExamples_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            TextFontExamples()
            
            TextFontExamples().environment(\.sizeCategory, .accessibilityLarge)

            
        }.previewLayout(.fixed(width: 1200, height: 600))
        
    }
}

struct customFont: ViewModifier {
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
