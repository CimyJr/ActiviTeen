//
//  ContentView.swift
//  ActivTeen
//
//  Created by user on 18/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image(systemName: "cat")
}
}

struct CombinedPreview: View {
    var body: some View {
        VStack {
            TittleActivitiesView()
                
            ActivitiesView()
                
        } .ignoresSafeArea()
    }
    
}

#Preview {
    CombinedPreview()
}


