//
//  ImageSizingOverview.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct ImageSizingOverview: View {
    var body: some View {
        VStack {
            HStack {
                Image("dog_100x100")
                VStack{
                    Image("dog_200x200")
                    Color.red.frame(width: 200, height: 200)
                }
                Image("dog_400x400")
            }
            
            HStack {
                Image("dog_100x100").frame(width: 200, height: 200).border(Color.gray)
                
                Image("dog_100x100").resizable().frame(width: 200, height: 200).border(Color.gray)
                
                Image("dog_100x100").resizable(capInsets: EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30), resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/).frame(width: 200, height: 200, alignment: .center)


                Image("dog_100x100").resizable(capInsets: EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0),
                                               resizingMode: .tile).frame(width: 250, height: 250, alignment: .center)

            }
            
            HStack {
                Image("dog_100x100").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 100,alignment:  .top).border(Color.gray).border(Color.gray)
                Image("dog_100x100").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 100).border(Color.gray).border(Color.gray)
                Image("dog_100x100").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 100).border(Color.gray).border(Color.gray)
                Image("dog_100x100").scaledToFit().border(Color.gray).border(Color.gray)
                
                Image("dog_100x100").resizable().aspectRatio(1.2,contentMode: .fit).frame(width: 200, height: 100).border(Color.gray).border(Color.gray)
                    .padding(.bottom)
            }
            
            HStack {
                Image("dog_100x100").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 100,alignment:  .top).border(Color.gray).border(Color.gray).clipped()
                
                Image("dog_100x100").clipShape(EmptyArrow(isVertical: true))
                
                Image("dog_100x100").mask(Text("Arrow").font(.system(size:30,weight: .black)))
                
                Image("dog_100x100").cornerRadius(20)
            }
        }
    }
}

struct ImageSizingOverview_Previews: PreviewProvider {
    static var previews: some View {
        ImageSizingOverview().previewLayout(.fixed(width: 1000, height: 1000))
    }
}
