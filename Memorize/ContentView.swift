//
//  ContentView.swift
//  Memorize
//
//  Created by Kiran Boyle on 09.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            Rectangle()
            Text("👻").font(.largeTitle)
        })
        .padding(12)
        .foregroundColor(.orange)
    }
}

#Preview {
    ContentView()
}
