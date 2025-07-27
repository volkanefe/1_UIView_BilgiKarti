//
//  InfoCardView.swift
//  1_UIView_BilgiKarti
//
//  Created by VOLKAN EFE on 27.07.2025.
//

import SwiftUI

struct InfoCardView: View {
    let message: String
    
    var body: some View {
        VStack {
            Text(message)
                .font(.title)
                .padding()
            Button("Tamam"){
                print("Basıldı")
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .background(Color.yellow.opacity(0.3))
        .cornerRadius(12)
    }
}


