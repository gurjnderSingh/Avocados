//
//  AppView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 12/02/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocado")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagingView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettngsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
