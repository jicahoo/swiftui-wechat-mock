//
//  PersonSectionHeader.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/17.
//

import SwiftUI

struct PersonSectionHeader: View {
    var title: String
    var body: some View {
        HStack{
          Text(title)
            Spacer()
        }.padding().background(Color(red: 237/255, green: 237/255, blue: 237/255))
    }
}

