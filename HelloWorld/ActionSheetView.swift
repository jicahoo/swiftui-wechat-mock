//
//  ActionSheetView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/18.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var actionSheetIsPresented = false
    
    var body: some View {
        Button(action: {
            actionSheetIsPresented = true
        }, label: {
            Text("打开actionSheet")
        }).actionSheet(isPresented: $actionSheetIsPresented, content: {
            ActionSheet(title: Text("Print Color"), message: Text("Select a new color"), buttons: [
                    .default(Text("Black")) { print("Red") },
                    .default(Text("Green")) { print("Green") },
                    .default(Text("Blue")) { print("Blue") },
                .destructive(Text("Red")),
                    .cancel(Text("取消"))
                ])
        })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
