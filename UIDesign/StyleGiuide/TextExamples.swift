//
//  TextExamples.swift
//  UIDesign
//
//  Created by joao camargo on 05/05/21.
//

import SwiftUI
import LoremSwiftum

struct TextExamples: View {
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing:10) {
                
                VStack(alignment: .leading, spacing:10) {
                    
                    Text(Lorem.title).header1()
                        //.modifier(customFont(fontName: "Cupperlate"))
                    
                    Text(Lorem.words(6)).detailText()
                    //.font(.system(.subheadline, design: .rounded)).foregroundColor(Color("Gray3")).padding(.bottom)
                    
                    Text(Lorem.paragraph).allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/).minimumScaleFactor(0.75).frame(height:200)
                    
                    Text(Lorem.paragraphs(5))//.font(.system(.body, design: .rounded))
                        .bodyText()
                        .multilineTextAlignment(.trailing).lineSpacing(10)
                    
                }.padding(10)
            }
        }
    }
}

struct TextExamples_Previews: PreviewProvider {
    static var previews: some View {
        TextExamples()
    }
}
