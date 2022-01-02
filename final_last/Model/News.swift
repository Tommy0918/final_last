//
//  News.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import Foundation

struct SearchNews: Codable {
    var articles: [NewsItem]
}

struct NewsItem: Codable{
    let title: String
    //let author: String
    let description: String
}
