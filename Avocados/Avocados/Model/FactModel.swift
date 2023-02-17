//
//  FactModel.swift
//  Avocados
//
//  Created by Gurjinder Singh on 17/02/23.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
