//
//  RipeningModel.swift
//  Avocados
//
//  Created by Gurjinder Singh on 19/02/23.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
