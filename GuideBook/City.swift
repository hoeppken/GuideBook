//
//  City.swift
//  GuideBook
//
//  Created by Rafael dos Santos Varela on 17.02.25.
//

import Foundation

struct City: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
    
}
