//
//  PlaceNavView.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import SwiftUI

struct PlaceNavView: View {
    let name: String
    let rating: Double
    let user_ratings_total: Int
    var body: some View {
        VStack{
            Text(name).bold()
            Text(" ")
            //Text(author)
            Text("評分：\(rating, specifier: "%.1f")")
            Text("評分人數：\(user_ratings_total)")
        }
    }
}

