//
//  ChatView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/5.
//

import Foundation
import SwiftUI

struct ChatListView: View {
    let messages: [Message] = [
        Message(id:1, imageName: "dzdp", senderName: "大众点评", msgDate: "2022/11/11", message: "社会主义好"),
        Message(id:2, imageName: "zsdx", senderName: "中山大学", msgDate: "2022/11/12", message: "哲学与科学"),
        Message(id:3, imageName: "tam", senderName: "天安门", msgDate: "2022/10/12", message: "东方红，太阳升！"),
        Message(id:4, imageName: "sh", senderName: "上海", msgDate: "2022/10/12", message: "外滩")
    ]
    var body: some View {
        VStack {
            ForEach (messages) { message in
                NavigationLink(destination: ChatView(title: message.senderName)){
                    MessageView(imageName: message.imageName, senderName: message.senderName, msgDate: message.msgDate, message: message.message)
                }
            }
        }
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
