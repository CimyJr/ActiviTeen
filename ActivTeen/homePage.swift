//
//  homePage.swift
//  ActivTeen
//
//  Created by user on 20/03/25.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        VStack(spacing: 16){
            Card(text: "Desafios", image: "book")
            HStack(spacing: 16) {
                Card(text: "Desenhos", image: "book")
                Card(text: "Musicas")
            }
            HStack(spacing: 16) {
                Card(text: "Livros")
                Card(text: "Musicas")
            }
        }.padding()
        
    }
}

#Preview {
    homePage()
}
