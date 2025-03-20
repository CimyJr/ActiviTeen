import SwiftUI

enum DestinationView: Identifiable {
    case tela1
    case tela2
    case tela3
    case tela4
    
    var id: Int {
        switch self {
        case .tela1: return 1
        case .tela2: return 2
        case .tela3: return 3
        case .tela4: return 4
        }
    }
}

struct ActivitiesView: View {
    
    let activities: [(text: String, destination: DestinationView)] = [
        ("Escreva uma música curta sobre o seu dia em até 200 palavras.", .tela1),
        ("Crie uma playlist com 10 músicas que reflitam seu humor hoje.", .tela2),
        ("Faça um Top 5 com suas músicas favoritas do momento.", .tela3),
        ("Crie uma paródia simples de uma música favorita.", .tela4)
    ]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
   
    @State private var activeSheet: DestinationView? = nil
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(activities, id: \.text) { activity in
                
                    Button(action: {
                        activeSheet = activity.destination
                    }) {
                        ActivityCardView(text: activity.text)
                    }
                }
            }
            .padding(15)
            Spacer()
        }
        .sheet(item: $activeSheet) { destination in
            getDestinationView(for: destination)
        }
    }
    
    private func getDestinationView(for destination: DestinationView) -> some View {
        switch destination {
        case .tela1:
            return AnyView(Tela1())
        case .tela2:
            return AnyView(Tela2())
        case .tela3:
            return AnyView(Tela3())
        case .tela4:
            return AnyView(Tela4())
        }
    }
}

struct Tela1: View {
    var body: some View {
        Text("Tela 1")
            .font(.title)
            .padding()
    }
}

struct Tela2: View {
    var body: some View {
        Text("Tela 2")
            .font(.title)
            .padding()
    }
}

struct Tela3: View {
    var body: some View {
        Text("Tela 3")
            .font(.title)
            .padding()
    }
}

struct Tela4: View {
    var body: some View {
        Text("Tela 4")
            .font(.title)
            .padding()
    }
}

#Preview {
    ActivitiesView()
}
