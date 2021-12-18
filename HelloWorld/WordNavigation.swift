import SwiftUI

struct WordNavigation: View {
    
    var words: [String] = [
        "A","B","C","D","E"
    ]
    
    @Binding var wordNavigationIndex: Int
    
    var body: some View {
        HStack{
            Spacer()
            VStack(spacing: 15){
                ForEach(0..<words.count, id: \.self){index in
                    
                    if index == wordNavigationIndex {
                        
                        SelectedText(title: words[index]).onTapGesture {
                            wordNavigationIndex = index
                        }
                        
                    } else{
                        Text(words[index]).onTapGesture {
                            wordNavigationIndex = index
                        }
                    }
                   
                }
            }.padding()
        }
    }
}

struct SelectedText: View {
    var title: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25)) .fill().foregroundColor(.green).aspectRatio(1, contentMode: .fit).frame(height: 25)
            Text(title).foregroundColor(.white)
        }
    }
}


struct WordNavigation_Previews: PreviewProvider {
    static var previews: some View {
        WordNavigation(wordNavigationIndex: .constant(1))
    }
}
