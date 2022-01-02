//
//  NewsNavView.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import SwiftUI

struct NewsNavView: View {
    //let author: String
    let title: String
    let description: String
    var body: some View {
        VStack{
            Text(title).bold()
            Text(" ")
            //Text(author)
            Text(description)
        }
    }
}
