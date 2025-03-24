//
//  WriteSongView.swift
//  ActivTeen
//
//  Created by found on 21/03/25.
//

import SwiftUI
import SwiftData


@Model
class Song {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}

struct WriteSongView: View {
    
    var descriptionTitle: String
    
    @State private var text: String = ""
    @Environment(\.modelContext) private var modelContext
    @Query private var songs: [Song]
    
    var body: some View {
        
        HStack {
            Text(descriptionTitle)
                .font(.title)
                .bold()
        }
        .padding()
        
        Form {
            Section {
                ZStack (alignment: .bottomLeading){
                    TextField("Digite aqui...", text: $text, axis: .vertical)
                        .textFieldStyle(.plain)
                       .frame(height: 200, alignment: .top)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .onAppear {
            
            if let savedSong = songs.first {
                text = savedSong.text
            }
        }
        .onDisappear {
            
            if let savedSong = songs.first {
                savedSong.text = text
            } else {
                let newSong = Song(text: text)
                modelContext.insert(newSong)
            }
        }
    }
}

#Preview {
    WriteSongView(descriptionTitle: "Escreva uma música curta sobre o seu dia em até 30 palavras")
        .modelContainer(for: Song.self, inMemory: false)
}


////
////  WriteSongView.swift
////  ActivTeen
////
////  Created by found on 21/03/25.
////
//
//import SwiftUI
//
//struct WriteSongView: View {
//    
//    var descriptionTitle: String
//    
//    @State private var text: String = ""
//    
//    var body: some View {
//        
//        HStack {
//            Text(descriptionTitle)
//                .font(.title)
//                .bold()
//        }
//        .padding()
//        
//        Form {
//            Section {
//                ZStack (alignment: .bottomLeading){
//                    TextField("Digite aqui...", text: $text, axis: .vertical)
//                        .textFieldStyle(.plain)
//                       .frame(height: 200, alignment: .top)
//                }
//            }
//        }
//        .scrollContentBackground(.hidden)
//    }
//}
//
//#Preview {
//    WriteSongView(descriptionTitle: "Escreva uma música curta sobre o seu dia em até 30 palavras")
//}
