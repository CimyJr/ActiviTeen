//
//  TittleActivities.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI

struct TittleActivitiesView: View {
    
    var titleActivities: String
    var subTittleActivities: String
    var imageActivities: String
    
    var body: some View {
        
            VStack(spacing: 20){
                ZStack {
                    Rectangle()
                        .fill(Color.greenTest)
                        .frame(height: 200)
                        Image(imageActivities)
                        .padding(.top,35)
                }
                    
                
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(titleActivities)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer() 
                    }
                        HStack{
                            Text(subTittleActivities)
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                }
                
                .padding(15)
        }
    }
}

#Preview {
    TittleActivitiesView(titleActivities: "Atividades", subTittleActivities: "Realize as atividades e bata sua meta diária", imageActivities: "Seta")
}
