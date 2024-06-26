import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    @State private var isFaceUp: Bool = false
    
    let base = RoundedRectangle(cornerRadius:12)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth:2)
                Text("👻").font(.largeTitle)
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
