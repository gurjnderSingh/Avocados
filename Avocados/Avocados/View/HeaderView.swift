//
//  HeaderView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 14/02/23.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: - PROPERTIES
    @State private var showHeadline: Bool = false
    var header: Header
//    var slideInAnimation: Animation {
//        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
//            .speed(1)
//            .delay(0.25)
//    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .scaledToFill()
//                .scaledToFit()
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack (alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -46, y: showHeadline ? 75 : 220)
            .onAppear {
                withAnimation(.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)) {
                    self.showHeadline.toggle()
                }
            }
        }
        .frame(width: 400, height: 320, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        .background(Color.yellow)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headerData[0])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
