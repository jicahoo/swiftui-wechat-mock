//
//  ContentView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    @State private var selectionTab = 0
    
    var body: some View {
        
        TabView(selection: $selectionTab)
        {
            NavigationView {
                ChatListView()
                    .navigationTitle("微信")
                    .navigationBarItems(leading: Text(".."), trailing: Image(systemName: "plus.circle"))
                    .navigationBarTitleDisplayMode(.inline)
            }.tabItem {
                Label("微信",systemImage: "message.fill")
            }
            NavigationView{
                PersonListView().navigationTitle("通讯录").navigationBarItems(trailing: Image(systemName: "person.badge.plus")).navigationBarTitleDisplayMode(.inline)
                
            }.tabItem {
                Image(systemName: "person.2.fill")
                Text("通讯录")
            }
            NavigationView {
                ExploreView()
            }
                .tabItem{
                    Label("发现", systemImage: "location.circle")
                }
            Text("我页面")
                .tabItem{
                    Label("我", systemImage: "person")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
