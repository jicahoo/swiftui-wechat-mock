//
//  SearchFullScreenView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/17.
//

import SwiftUI

struct SearchFullScreenView: View {
    @State var searchText:String = ""
    @Binding var searchFullScreenPresented: Bool
    var commonSearchFilter: [String] = [
          "朋友圈","文章","公众号","小程序","音乐","表情","服务"
      ]
    var body: some View {
        VStack {
            HStack{
                ZStack {
                    Rectangle().frame(height:50).foregroundColor(.white)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("搜索", text:$searchText)
                        Image(systemName: "mic")
                    }.padding()
                }
                Button("取消"){
                    searchFullScreenPresented = false
                }
                
            }
            Text("搜索指定内容")
            let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
            LazyVGrid(columns: columns) {
                ForEach((0..<commonSearchFilter.count), id: \.self) {index in
                    
                    Text("\(commonSearchFilter[index])").font(.callout).padding(.bottom).foregroundColor(.blue)
                    
                }
            }.font(.largeTitle)
            
            Spacer()
            
        }
        
        
    }
}

struct SearchFullScreenView_Preview: PreviewProvider {
    static var previews: some View {
        SearchFullScreenView(searchFullScreenPresented: .constant(false))
    }
}
