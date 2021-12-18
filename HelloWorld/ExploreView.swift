//
//  ExploreView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/18.
//


import SwiftUI

struct ExploreView: View {
        
    var body: some View {
        List{
            Section{
                
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack{
                            Image(systemName: "text.justifyright").foregroundColor(.blue)
                            Text("朋友圈").foregroundColor(.black)
                        }
                    })
                
               
                HStack{
                    Image(systemName: "text.justifyright").foregroundColor(.red)
                    Text("朋友圈")
                }
            }
            Section{
                HStack{
                    Image(systemName: "text.justifyright").foregroundColor(.green)
                    Text("朋友圈")
                }
                HStack{
                    Image(systemName: "text.justifyright").foregroundColor(.orange)
                    Text("朋友圈")
                }
            }
        }.listStyle(GroupedListStyle()).navigationTitle("发现").navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
