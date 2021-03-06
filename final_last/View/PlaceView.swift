//
//  PlaceView.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import SwiftUI

struct PlaceView: View {
    @StateObject var placeViewModel = PlaceViewModel()
    @Binding var showAlertSheet: Bool
    let networkReachability = NetworkReachability()
    var body: some View {
        NavigationView{
            List{
                ForEach(placeViewModel.searchPlace,id: \.name){
                    item in
                    NavigationLink(destination: PlaceNavView(name: item.name,rating: item.rating,user_ratings_total: item.user_ratings_total), label: {Text(item.name)})
                }
            }.navigationTitle("地點")
        }
        .onAppear(perform: {
            if(!networkReachability.reachable){
                showAlertSheet = true;
            }
        })
        .refreshable{
            placeViewModel.fetchItems()
        }
        .overlay{
            if(!networkReachability.reachable){
                Text("無法連線")
            }
            else if(placeViewModel.searchPlace.isEmpty){
                ProgressView("資料下載中...")
            }
        }
    }
}
