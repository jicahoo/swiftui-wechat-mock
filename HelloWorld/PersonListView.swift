//
//  PersonListView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/13.
//

import Foundation
import SwiftUI

struct PersonListView: View {
    @State var searchFullPagePresented: Bool = false
    @State var wordNavigationIndex:Int = -1
    var body: some View {
        ZStack {
            ScrollViewReader {proxy in
                ScrollView {

                    LazyVStack(pinnedViews: [.sectionHeaders, .sectionFooters]){
                        
                        ZStack{
                            
                            Rectangle().fill().frame(height: 50).foregroundColor(.white).cornerRadius(5).padding(12.5)
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                Text("搜索")
                            }.foregroundColor(Color(red: 188/255, green: 188/255, blue: 188/255))
                            
                        }.fullScreenCover(isPresented: $searchFullPagePresented, content: {
                            
                            SearchFullScreenView(searchFullScreenPresented: $searchFullPagePresented)
                            
                        }).onTapGesture {
                            searchFullPagePresented = true
                        }.background(Color(red: 237/255, green: 237/255, blue: 237/255))
                        Section(header: PersonSectionHeader(title: "A").background(Color.red)){
                            PersonSectionView(text: "Apple")
                            PersonSectionView(text: "Aaron")
                        }.id(0)
                        
                        Section(header: PersonSectionHeader(title: "B").background(Color.red)){
                            PersonSectionView(text: "Bob")
                            PersonSectionView(text: "Boston")
                        }.id(1)
                        
                        Section(header: PersonSectionHeader(title: "C").background(Color.red)){
                            PersonSectionView(text: "Cathy")
                            PersonSectionView(text: "Chris")
                        }.id(2)
                    }.onChange(of: wordNavigationIndex, perform: {index in
                        proxy.scrollTo(index)
                    })
                }
            }
            WordNavigation(wordNavigationIndex: $wordNavigationIndex)
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
