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
            text: "Escreva uma música curta sobre o seu dia em até 30 palavras", isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(WriteSongView(descriptionTitle:"Escreva uma música curta sobre o seu dia em até 30 palavras"))),
        
        Activity(
            text: "Crie uma playlist com 10 músicas que reflitam seu humor hoje",
            isCompleted: false,
            color1: .darkgreenTest,
            color2: .greenTest,
            tela: AnyView(Color.red)),
        
        Activity(text: "Liste seu Top 5 de músicas favoritas do momento", isCompleted: false,
                 color1: .darkgreenTest,
                 color2: .greenTest,
                 tela: AnyView(ContentView())),
        
        Activity(text: "Crie uma paródia simples de uma música favorita", isCompleted: false,
                 color1: .darkgreenTest,
                 color2: .greenTest,
                 tela: AnyView(ContentView()))
    ]
    
    @State private var selected: Activity?
    
    var progress: Double {
        let completedCount = activities.filter { $0.isCompleted }.count
        return Double(completedCount) / Double(activities.count)
    }
    
    var body: some View {
        VStack {
            HStack{
                ProgressBarView(progress: .constant(progress), colorBar: Color.darkgreenTest)
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(activities.indices, id: \.self) { index in
                    VStack {
                        Button(action: {
                            selected = activities[index]
                        }) {
                            ActivityCardView(
                                isCompleted: $activities[index].isCompleted,
                                text: activities[index].text,
                                color1: activities[index].color2,
                                color2: activities[index].color1
                            )
                            .cardSquare()
                        }
                        
                    }
                }
            }
            .padding()
            .sheet(item: $selected) { activity in
                activity.tela
                    .presentationDetents([.fraction(0.85)])

            }
        }
    }
    
}


#Preview {
    CombinedPreview()
        .modelContainer(for: Song.self, inMemory: true)
}

