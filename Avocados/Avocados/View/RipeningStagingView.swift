//
//  RipeningStagingView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 12/02/23.
//

import SwiftUI

struct RipeningStagingView: View {
    
    var ripening: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            VStack {
                Spacer()
                HStack {
                    ForEach(ripening) { ripen in
                        RipeningView(ripening: ripen)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagingView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagingView()
    }
}
