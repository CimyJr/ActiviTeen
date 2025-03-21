//
//  ActivityCardView.swift
//  ActivTeen
//
//  Created by found on 20/03/25.
//

import SwiftUI

struct ActivityCardView: View {
    var text: String
    var image: String?

    var body: some View {
        
        
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
                .frame(width: .infinity, height: .infinity)
            
            VStack {
                    if let image = image {
                    Image(image)
                        .padding()
                }
                
                
                Text("Desenhe algo...")
                    .font(.system(size: 15))
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundStyle(Color.white)
                    .padding(.bottom,16)
            }
        }
        
    }
}

#Preview {
    ActivityCardView(text: "Texto", image: "book")
}
