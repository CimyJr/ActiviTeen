//
//  ActivitiesView.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI
import SwiftData

@Model
class Activity: Identifiable {
    var text: String
    var isCompleted: Bool
    var task: String
    var answer: String = ""
    
    init(text: String, isCompleted: Bool, task: String) {
        self.text = text
        self.isCompleted = isCompleted
        self.task = task
    }
    
}

struct ActivitiesView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query private var activities: [Activity]
    
//    @State private var activities: [Activity] = [
//        Activity(
//            text: "Escreva uma música curta sobre o seu dia em até 30 palavras",
//            isCompleted: false,
//            task:  "Escreva uma música curta sobre o seu dia em até 30 palavras"
//        ),
//        Activity(
//            text: "Crie uma playlist com 10 músicas que reflitam seu humor hoje",
//            isCompleted: false,
//            task: "Crie uma playlist com 10 músicas que reflitam seu humor hoje"
//        ),
//        Activity(
//            text: "Liste seu Top 5 de músicas favoritas do momento",
//            isCompleted: false,
//            task: "Liste seu Top 5 de músicas favoritas do momento"
//        ),
//        Activity(
//            text: "Crie uma paródia simples de uma música favorita",
//            isCompleted: false,
//            task: "Crie uma paródia simples de uma música favorita"
//        )
//    ]
    
    var progress: Double {
        let completedCount = activities.filter { $0.isCompleted }.count
        return Double(completedCount) / Double(activities.count)
    }
    
    var body: some View {
        VStack {
            HStack {
                if activities.count > 0 {
                    ProgressBarView(progress: .constant(progress), colorBar: Color.darkgreenTest)
                }
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(activities) { activity in
                    @Bindable var activity = activity
                    NavigationLink {
                        WriteSongView(descriptionTitle: activity.task, text: $activity.answer)
                    } label: {
                        ActivityCardView(
                            isCompleted: $activity.isCompleted,
//                            isCompleted: Binding(
//                                get: { activity.isCompleted },
//                                set: { newValue in
//                                    if let index = activities.firstIndex(where: { $0.id == activity.id }) {
//                                        activities[index].isCompleted = newValue
//                                    }
//                                }
//                            ),
                            text: activity.text,
                            color1: .greenTest,
                            color2: .darkgreenTest
                        )
                        .cardSquare()
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .onAppear {
            if activities.count == 0 {
                
                let all = [
                    Activity(
                        text: "Escreva uma música curta sobre o seu dia em até 30 palavras",
                        isCompleted: false,
                        task:  "Escreva uma música curta sobre o seu dia em até 30 palavras"
                    ),
                    Activity(
                        text: "Crie uma playlist com 10 músicas que reflitam seu humor hoje",
                        isCompleted: false,
                        task: "Crie uma playlist com 10 músicas que reflitam seu humor hoje"
                    ),
                    Activity(
                        text: "Liste seu Top 5 de músicas favoritas do momento",
                        isCompleted: false,
                        task: "Liste seu Top 5 de músicas favoritas do momento"
                    ),
                    Activity(
                        text: "Crie uma paródia simples de uma música favorita",
                        isCompleted: false,
                        task: "Crie uma paródia simples de uma música favorita"
                    )
                ]
                
                for activity in all {
                    modelContext.insert(activity)
                }
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        CombinedPreview()
    }
    .modelContainer(for: Activity.self, inMemory: false)
}



