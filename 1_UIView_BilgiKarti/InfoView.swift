//
//  InfoView.swift
//  1_UIView_BilgiKarti
//
//  Created by VOLKAN EFE on 27.07.2025.
//

import SwiftUI

struct InfoView: UIViewControllerRepresentable {
    
    let message: String
    
    func makeUIViewController(context: Context) -> InfoViewController {
        InfoViewController(message: message)
    }
    
    func updateUIViewController(_ uiViewController: InfoViewController, context: Context) {
        
    }
    
}


