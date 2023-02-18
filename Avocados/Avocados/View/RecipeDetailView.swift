//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Gurjinder Singh on 18/02/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
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
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
