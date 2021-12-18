//
//  ChatBubble.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/11.
//

import Foundation
import SwiftUI

struct ChatBubble: View {
    let text: String
    var body: some View {
        ZStack {
            ChatBubbleShape().foregroundColor(.green).padding().frame(width: 200,height:100)
            Text(text).foregroundColor(.white)
        }
    }
}

struct ChatBubbleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        
        let path = Path { p in
            p.move(to: CGPoint(x:0, y:0))
            p.addLine(to: CGPoint(x: width, y: 0))
            
            p.addLine(to: CGPoint(x: width, y: height/3))
            
            p.addLine(to: CGPoint(x: width+20, y: height/2))
            
            p.addLine(to: CGPoint(x: width, y: 2*height/3))
            
            p.addLine(to: CGPoint(x: width, y: height))
            
            p.addLine(to: CGPoint(x: 0, y: height))
            
            p.addLine(to: CGPoint(x: 0, y: 0))
            
            
        }
        return path
    }
    
    
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(text: "你好")
    }
}
