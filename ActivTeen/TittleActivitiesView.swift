//
//  TittleActivities.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI

struct TittleActivities: View {
    var body: some View {
        NavigationView{
            
            VStack(spacing: 20){
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 120)
                    .overlay(Text("Image").foregroundColor(.black))
                    
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Activities")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Realize as atividades e bata sua meta diária ")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    TittleActivities()
}
