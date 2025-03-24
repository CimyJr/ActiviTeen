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
    var lockedColor: String
    var isLocked: Bool

    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
                .fill(Color(isLocked ? lockedColor : color))
                .frame(width: .infinity, height: .infinity)

            if isLocked {
                HStack {
                    Image("lock").frame(width: 30, height: 28).padding(.leading, 15)

                    Text("Libera em 10d 08h").colorMultiply(
                        isLocked ? Color.white : Color.black
                    )
                    .font(.system(size: 20))
                    .font(.body)
                    .bold()
                    .fontWeight(.regular)
                    .foregroundStyle(Color.white)
                    .padding(.leading, 7)
                }
            } else {
                HStack{
                    Text("\(challengerNumber)").colorMultiply(
                        isLocked ? Color.white : Color.black
                    )
                    .font(.system(size: 20))
                    .font(.body)
                    .bold()
                    .fontWeight(.regular)
                    .foregroundStyle(Color.white)
                    .padding(.leading, 15)
                    Text(challenger).colorMultiply(
                        isLocked ? Color.white : Color.black
                    )
                    .font(.system(size: 15))
                    .font(.body)
                    .bold()
                    .fontWeight(.regular)
                    .foregroundStyle(Color.white)
                    .padding(.leading, 7)
                }
            }

        }
    }
}

#Preview {
    ChallengerCard(
        challengerNumber: 01, challenger: "Leia um livro em um mês",
        color: "challengers", lockedColor: "black", isLocked: true)
}
