//
//  Place.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import Foundation

struct SearchPlace: Codable {
    var results: [PlaceItem]
    var next_page_token: String?
}

struct PlaceItem: Codable{
    let place_id: String
    let name: String
    let rating: Double
    let user_ratings_total: Int
}
