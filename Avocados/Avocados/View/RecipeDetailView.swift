//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 18/02/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    //TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    //RATING
                        RecipeRatingView(recipe: recipe)
                    
                    //COOKING
                        RecipeCookingView(recipe: recipe)
                        
                    //INGREDIENTS
                        Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    
                    //INSTRUCTIONS
                    Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                    
//                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.instructions, id: \.self) { item in
                            VStack(alignment: .center, spacing: 5) {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .leading)
                                    .imageScale(.large)
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                Text(item)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                    .font(.system(.body, design: .serif))
                            }
                        }
//                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                    Spacer()
                }
            }
        }
        .onAppear() {
            self.pulsate.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
