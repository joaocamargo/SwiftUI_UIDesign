//
//  ImageColorView.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct ImageColorView: View {
    var body: some View {
        VStack {
            
            ZStack{
                Text("Cats").bold()
                //Color.red.frame(width: 100, height: 100)
                Image("cat_100x100").opacity(0.2)
            }
            
            HStack {
                Text("Brightness")
                Image("cat_100x100").brightness(-0.2)
                Image("cat_100x100").brightness(0)
                Image("cat_100x100").brightness(0.2)
            }
            
            HStack {
                Text("Saturation")
                Image("cat_100x100").saturation(0)
                Image("cat_100x100").saturation(1)
                Image("cat_100x100").saturation(2)
            }
            
            HStack {
                Text("Contrast")
                Image("cat_100x100").contrast(0.2)
                Image("cat_100x100").contrast(1)
                Image("cat_100x100").contrast(1.3)
            }
            
            HStack {
                Text("ColorMultiply")
                Image("cat_100x100").colorMultiply(.red)
            }
            
            HStack {
                Text("grayscale")
                Image("cat_100x100").grayscale(0.2)
            }
            
            HStack {
                Text("blur").blur(radius: 2)
                Image("cat_100x100").blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

struct ImageColorView_Previews: PreviewProvider {
    static var previews: some View {
        ImageColorView()
    }
}
