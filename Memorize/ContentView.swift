import SwiftUI


struct ContentView: View {
    
    @State private var emojis: [String] = ["👻", "💀", "👽", "👾"]
    @State private var cardToAdd: String = ""
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<emojis.count, id: \.self) { index in
                    CardView(content:emojis[index])
                }
              
         
               
            }
            HStack {
                TextField("Add Emoji", text:$cardToAdd)
                Button("Add Card"){
                    emojis.append(cardToAdd)
                }
                Button("remove Card"){

                    emojis.removeLast()
                }
            }
        }

        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    let content:String
    
    @State private var isFaceUp: Bool = false
    
    let base = RoundedRectangle(cornerRadius:12)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth:2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()         
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
