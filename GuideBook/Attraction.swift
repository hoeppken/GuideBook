//
//  Attraction.swift
//  GuideBook
//
//  Created by Rafael dos Santos Varela on 17.02.25.
//

import Foundation


struct Attraction : Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
