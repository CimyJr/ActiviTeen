//
//  ContentView.swift
//  ActivTeen
//
//  Created by user on 18/03/25.
//

import SwiftUI

struct Cards: View {
    
    let activities = [
        "Escreva uma música curta sobre o seu dia em até 200 palavras.",
        "Crie uma playlist com 10 músicas que reflitam seu humor hoje.",
        "Faça um Top 5 com suas músicas favoritas do momento.",
        "Crie uma paródia simples de uma música favorita."
    ]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(activities, id: \.self) { activity in
                    activityCard(text: activity)

                }
            }
            
            .padding(.top,200)
            .padding(15)
            Spacer()
           
        }
    }
}

struct activityCard: View {
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
            .frame(width: 173, height: 173)
        
            .overlay(
                Text(text)
                   
                    .font(.system(size: 15))
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                    .padding(20)
                    .multilineTextAlignment(.leading)
            )
                
    }
}

#Preview {
    Cards()
}
