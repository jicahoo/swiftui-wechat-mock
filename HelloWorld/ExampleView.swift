//
//  ExampleView.swift
//  HelloWorld
//
//  Created by Zhang Flash on 2021/12/17.
//
import SwiftUI
struct ExampleView: View {
    @State private var width: CGFloat = 50
    
    var body: some View {
        ScrollView{
            LazyVStack(pinnedViews: [.sectionHeaders]){
               Section(header: Text("A").background(Color.red)){
                    Text("Apple")
                    Text("Aaron")
                }
                Section(header: Text("B").background(Color.red)){
                    Text("Black")
                    Text("Bad")
                }
            }
        }
    }
}


struct SubView: View {
    var body: some View {
        GeometryReader { proxy in
            Rectangle()
                .fill(Color.yellow.opacity(0.7))
                .frame(width: max(proxy.size.width, 120), height: max(proxy.size.height, 120))
        }
    }
}

struct ExampleView_Prviews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
