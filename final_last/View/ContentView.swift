//
//  ContentView.swift
//  final_last
//
//  Created by 吳承軒 on 2022/1/2.
//

import SwiftUI
import Network

struct ContentView: View {
    @State private var showAlertSheet = false
    let networkReachability = NetworkReachability()
    var body: some View {
        TabView {
            PlaceView(showAlertSheet: $showAlertSheet).tabItem {
                Text("地點")
            }
            NewsView(showAlertSheet: $showAlertSheet).tabItem {
                Text("新聞")
            }
        }.alert(isPresented: $showAlertSheet){
            Alert(title:Text("請檢查網路連線！"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

