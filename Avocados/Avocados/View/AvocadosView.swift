//
//  AvocadosView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 12/02/23.
//

import SwiftUI

struct AvocadosView: View {
    
    //MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: 10)
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenLight"))
                    .lineSpacing(5)
                    .frame(maxWidth: 640, minHeight: 120) // iPad
            }
            .padding()
            Spacer()
        }
        .background(
            Image("background")
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
        
    }
}
