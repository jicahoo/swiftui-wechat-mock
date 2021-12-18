//
//  ModalView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/18.
//
import SwiftUI

struct ModalView: View {
    
    @State var sheetIsPresented = false
    
    var body: some View {
        Button(action: {
            sheetIsPresented = true
        }, label: {
            Text("打开遮罩层")
        }).sheet(isPresented: $sheetIsPresented, content: {
            ZStack{
                Rectangle().fill().foregroundColor(.blue)
                Button(action: {
                    sheetIsPresented = false
                }, label: {
                    Text("返回").foregroundColor(.white)
                })
            }
           
        })
    }
}
