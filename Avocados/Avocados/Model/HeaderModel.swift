//
//  HeaderModel.swift
//  Avocados
//
//  Created by Gurjinder Singh on 15/02/23.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
