//
//  ActivitiesView.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI
import SwiftData

struct Activity: Identifiable {
    let id = UUID()
    var text: String
    var isCompleted: Bool
    var color1: Color
    var color2: Color
    var tela: AnyView
}

struct ActivitiesView: View {
    @State private var activities: [Activity] = [
        Activity(
            text: "Escreva uma música curta sobre o seu dia em até 30 palavras",
            isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(WriteSongView(descriptionTitle: "Escreva uma música curta sobre o seu dia em até 30 palavras"))
        ),
        Activity(
            text: "Crie uma playlist com 10 músicas que reflitam seu humor hoje",
            isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(WriteSongView(descriptionTitle: "Crie uma playlist com 10 músicas que reflitam seu humor hoje"))
        ),
        Activity(
            text: "Liste seu Top 5 de músicas favoritas do momento",
            isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(WriteSongView(descriptionTitle: "Liste seu Top 5 de músicas favoritas do momento"))
        ),
        Activity(
            text: "Crie uma paródia simples de uma música favorita",
            isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(WriteSongView(descriptionTitle: "Crie uma paródia simples de uma música favorita"))
        )
    ]
    
    var progress: Double {
        let completedCount = activities.filter { $0.isCompleted }.count
        return Double(completedCount) / Double(activities.count)
    }
    
    var body: some View {
        VStack {
            HStack {
                ProgressBarView(progress: .constant(progress), colorBar: Color.darkgreenTest)
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(activities) { activity in
                    NavigationLink(destination: activity.tela) {
                        ActivityCardView(
                            isCompleted: Binding(
                                get: { activity.isCompleted },
                                set: { newValue in
                                    if let index = activities.firstIndex(where: { $0.id == activity.id }) {
                                        activities[index].isCompleted = newValue
                                    }
                                }
                            ),
                            text: activity.text,
                            color1: activity.color2,
                            color2: activity.color1
                        )
                        .cardSquare()
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        CombinedPreview()
    }
        .modelContainer(for: Song.self, inMemory: false)
}



