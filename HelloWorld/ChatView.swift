//
//  ChatView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/5.
//

import SwiftUI

struct ChatView: View {
    var title: String
    @State var text: String = ""
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ScrollView {
                
                HStack{
                    Spacer()
                    ChatBubble(text: "你好")
                }.padding()
                
                HStack {
                    Spacer()
                    ChatBubble(text:"我好")
                }.padding()
                
                HStack {
                    Spacer()
                    ChatBubble(text:"大家好")
                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Hello")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Hello")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Hello")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Hello")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("NOw")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Hello")
//                }.padding()
//
//                HStack {
//                    Spacer()
//                    Text("New")
//                }.padding()
//                HStack {
//                    Spacer()
//                    Text("Oops")
//                }.padding()
                    
            }.navigationTitle(title).navigationBarItems(trailing: Image(systemName: "person"))
                    .navigationBarTitleDisplayMode(.inline)
            
            
            ZStack(alignment: .bottomLeading) {
//                Rectangle().fill().foregroundColor(.white)
//                    .frame(width: 330, height: 50)
                HStack {
                    Image(systemName: "text.bubble").font(.title)
                    Image(systemName: "waveform.circle").font(.title)
                    TextField("", text: $text).textFieldStyle(RoundedBorderTextFieldStyle())
                    Image(systemName: "face.smiling").font(.title)
                    Image(systemName: "plus.circle").font(.title)
                }.padding()
            }
  
            
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(title:"dzdp")
    }
}
