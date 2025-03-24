//
//  SwiftUIView.swift
//  ActivTeen
//
//  Created by user on 24/03/25.
//

import SwiftUI

struct ChallengersPage: View {
    var body: some View {
        VStack(){
            TittleActivitiesView(titleActivities: "Desafios", subTittleActivities: "Realize as atividades e cumpra o desafio mensal ", imageActivities: "challengers", colorHeader: Color.blueTest)
            ProgressBarView(progress: .constant(0.25), colorBar: Color.blue)
            VStack(spacing: 16){
                ChallengerCard(challengerNumber: 01, challenger: "Leia um livro em um mês", color: "challengers", lockedColor: "black", isLocked: false).challengerCard()
                ChallengerCard(challengerNumber: 02, challenger: "Crie uma trilha sonora com 15 músicas para o livro que você está lendo", color: "challengers", lockedColor: "black", isLocked: false).challengerCard()
                ChallengerCard(challengerNumber: 03, challenger: "Crie um albúm com 20 fotos de ambientes e objetos que se encaixam em seu livro", color: "challengers", lockedColor: "black", isLocked: false).challengerCard()
                ChallengerCard(challengerNumber: 04, challenger: "Leia um livro em um mês", color: "challengers", lockedColor: "black", isLocked: true).challengerCard()
            }
        }.ignoresSafeArea()
        
        
    }
}

#Preview {
    ChallengersPage()
}
