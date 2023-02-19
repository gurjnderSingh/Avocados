//
//  SettngsView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 12/02/23.
//

import SwiftUI

struct SettngsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                //MARK: - Section #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                //MARK: - Section #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocados Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Gurjinder Singh")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Gurjinder Singh")
                        }
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocados Recipes")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }

                }
            }
        }
    }
}

struct SettngsView_Previews: PreviewProvider {
    static var previews: some View {
        SettngsView()
    }
}
