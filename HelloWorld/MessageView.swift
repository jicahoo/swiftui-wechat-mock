//
//  MessageView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/5.
//

import Foundation
import SwiftUI

struct MessageView: View {
    let imageName: String
    let senderName: String
    let msgDate: String
    let message: String
    var body: some View {
        HStack{
            Image(imageName)
                .resizable().scaledToFill().frame(width: 70, height: 70).cornerRadius(10).clipped()
            VStack(alignment:.leading){
                HStack{
                    Text(senderName).font(.title3)
                    Spacer()
                    Text(msgDate).foregroundColor(.gray)
                        .padding()
                }
                Text(message)
                    .foregroundColor(.gray)
                    .font(.callout)
                    .bold()
                Divider()
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(
            imageName:"dzdp",
            senderName: "大众点评",
            msgDate: "2022/01/01",
            message: "社会主义好"
        )
    }
}

