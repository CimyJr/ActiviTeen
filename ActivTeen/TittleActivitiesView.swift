//
//  TittleActivities.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI

struct TittleActivitiesView: View {
    var body: some View {
        
            VStack(spacing: 20){
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 200)
                    .overlay(Text("Image").foregroundColor(.black))
                    
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Atividades")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Realize as atividades e bata sua meta diária ")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            
        }
    }
}

#Preview {
    TittleActivitiesView()
}
