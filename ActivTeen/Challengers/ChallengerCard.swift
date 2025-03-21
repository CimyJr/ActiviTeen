//
//  SwiftUIView.swift
//  ActivTeen
//
//  Created by user on 21/03/25.
//

import SwiftUI

struct ChallengerCard: View {
    var challengerNumber: Int
    var challenger: String
    var color: String
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
                .fill(Color(color))
                .frame(width: .infinity, height: .infinity)
            
            HStack {
                Text("\(challengerNumber)")
                Text(challenger)
            }
            
        }
    }
}

#Preview {
    ChallengerCard(challengerNumber: 01, challenger: "Leia um livro em um mês", color: "challengers")
}
