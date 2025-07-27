//
//  ContentView.swift
//  1_UIView_BilgiKarti
//
//  Created by VOLKAN EFE on 27.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       InfoView(message: "SwiftUI görünümü UIKit içinde, sonra SwiftUI'da tekrar!")
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
