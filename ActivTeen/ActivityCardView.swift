//
//  ActivityCardView.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI

struct ActivityCardView: View {
    
    var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
            .frame(width: 173, height: 173)
        
            .overlay(
                Text(text)
                   
                    .font(.system(size: 15))
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                    .padding(20)
                    .multilineTextAlignment(.leading)
            )
    }
}

#Preview {
    ActivityCardView(text: "Texto")
}
