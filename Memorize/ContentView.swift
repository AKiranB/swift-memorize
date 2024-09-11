import SwiftUI


struct ContentView: View {
    
    @State private var emojis: [String] = ["👻", "💀", "👽", "👾", "👻", "💀", "👽", "👾" ] 
    @State private var cardCount: Int = 4
    var body: some View {
        VStack {
            cards
            cardCountAdjusters
        }
        .foregroundColor(.orange)
        .padding()
    }
    
    func cardCountAdjuster (by offset:Int, symbol:String) -> some View {
        Button(action :{
        cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
 
    var cardCountAdjusters: some View {
        return HStack{
            cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill" )
            Spacer()
            cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
        }
    }
    
    var cards: some View {
        HStack {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content:emojis[index])
            }
        }
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
