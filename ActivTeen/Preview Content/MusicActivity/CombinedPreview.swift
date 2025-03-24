import SwiftUI
import SwiftData

struct CombinedPreview: View {
    var body: some View {
        VStack(spacing: -15) {
            
            HStack{TittleActivitiesView(titleActivities: "Atividades", subTittleActivities: "Realize as atividades e bata sua meta diária", imageActivities: "Seta")
            }
            HStack{
                ActivitiesView()
            }
                
        } .ignoresSafeArea()
    }
    
}


#Preview {
    CombinedPreview()
    .modelContainer(for: Song.self, inMemory: true)
}
