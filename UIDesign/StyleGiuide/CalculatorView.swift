//
//  CalculatorView.swift
//  QuizApp
//
//  Created by Karin Prater on 07.01.21.
//

import SwiftUI

struct CalculatorView: View {
    
    let topBackgroundColor = Color(.systemBackground)
    let bottomBackgroundColor = Color(.secondarySystemBackground)
    
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 0) {
            
            VStack(alignment: .trailing, spacing: 10) {
                Text("2870").font(.title)
                    .bold()
                    .padding(.top)
                Text("325 + 67 / 8")
                   
            }
            .padding().padding(.trailing)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(topBackgroundColor.edgesIgnoringSafeArea(.top))
         
            
            VStack(spacing: 1) {
                HStack(spacing: 1) {
                    Text("C")
                        .numberStyle()
                    Text("+/-")
                        .numberStyle()
                    Text("%")
                        .numberStyle()
                    Text("/")
                        .operationStyle()
                }
                
                HStack(spacing: 1) {
                    Text("7")
                        .numberStyle()
                    Text("8")
                        .numberStyle()
                    Text("9")
                        .numberStyle()
                    Text("x")
                        .operationStyle()
                }
                
                HStack(spacing: 1) {
                    Text("4")
                        .numberStyle()
                    Text("5")
                        .numberStyle()
                    Text("6")
                        .numberStyle()
                    Text("+")
                        .operationStyle()
                }
                
                HStack(spacing: 1) {
                    Text("1")
                        .numberStyle()
                    Text("2")
                        .numberStyle()
                    Text("3")
                        .numberStyle()
                    Text("-").operationStyle()
                }
                HStack(spacing: 1) {
                    Text(".")
                        .numberStyle()
                    Text("0")
                        .numberStyle()
                    Text("⌫")
                        .numberStyle()
                    Text("=").foregroundColor(.white)
                        .modifier(SharedButtonStyle(color: .black))
                        
                }
                
            }.padding()
            
        }
        .background(bottomBackgroundColor.edgesIgnoringSafeArea(.all))
       
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalculatorView()
                .previewDevice("iPhone 11")
            CalculatorView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
}

struct SharedButtonStyle : ViewModifier {
    
    var color: Color = .pink
    
    func body(content: Content) -> some View {
        content
            .padding(5)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(RoundedRectangle(cornerRadius: 20)
                            .fill(color).shadow(color: .gray, radius: 10, x: 5, y: 5)).padding(5)
    }
}

struct NumberStyle: ViewModifier {
    
    var color: Color = .blue
    
    func body(content: Content) -> some View {
        content.foregroundColor(color)
            .modifier(SharedButtonStyle(color: Color(white: 0.8)))
    }
}
struct OperationStyle: ViewModifier {
    var color: Color = .pink
    
    func body(content: Content) -> some View {
        content
            .modifier(SharedButtonStyle())
            .background(Color(white: 0.7))
    }
}

extension View {
    func numberStyle() -> some View {
        ModifiedContent(
            content: self,
            modifier: NumberStyle()
        )
    }
    func operationStyle() -> some View {
        ModifiedContent(
            content: self,
            modifier: OperationStyle()
        )
    }
}
