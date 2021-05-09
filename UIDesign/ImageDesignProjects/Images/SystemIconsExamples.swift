//
//  SystemIconsExamples.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct SystemIconsExamples: View {
    var body: some View {
        
        VStack {
            HStack{
                Text("icons")
                Image(systemName: "person.crop.circle")
                Image(systemName: "person.crop.circle").imageScale(.small)
                Image(systemName: "person.crop.circle").imageScale(.medium)
                Image(systemName: "person.crop.circle").imageScale(.large)
                Image(systemName: "person.crop.circle").font(.system(size: 60, weight:  .regular))
                
                Image(systemName: "person.crop.circle").resizable().scaledToFit().frame(width: 60, height: 60)
                
                Image(systemName: "person.crop.circle").imageScale(.large).foregroundColor(.orange)
            }
            
            LableView(iconName: "pencil", text: "pencil").foregroundColor(Color.gray)
            
        }
    }
}

struct SystemIconsExamples_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconsExamples()
    }
}


struct LableView: View {
    
    let iconName: String
    let text: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 20) {
            Image(systemName: iconName)
            Text(text)
        }
    }
}
