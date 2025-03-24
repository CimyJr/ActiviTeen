//
//  homePage.swift
//  ActivTeen
//
//  Created by user on 20/03/25.
//

import SwiftUI

struct homePage: View {

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                HStack {
                    Text("ActivTeen").font(
                        .system(size: 20, weight: .semibold, design: .default))
                    Spacer()
                    Image(systemName: "gearshape").resizable().frame(
                        width: 40, height: 40)
                }.padding(.top, 31)
                NavigationLink{
                    ChallengersPage()
                }label: {
                    homeCard(text: "Desafios", image: "challengers",color: "challengers")
                        .padding(.top, 9).cardRectangular()
                }
                HStack(spacing: 16) {
                    homeCard(
                        text: "Desenhos", image: "designs", color: "designs"
                    ).cardSquare()
                    NavigationLink{
                        ActivitiesView()
                    }label: {
                        homeCard(text: "Musicas", image: "music", color: "music")
                            .cardSquare()
                    }
                }
                HStack(spacing: 16) {
                    homeCard(text: "Livros", image: "book", color: "books")
                        .cardSquare()
                    homeCard(
                        text: "Fotos", image: "pictures", color: "pictures"
                    ).cardSquare()
                }
                .padding(.bottom, 37)
            }.padding()
        }
    }
}
#Preview {
    homePage()
}
