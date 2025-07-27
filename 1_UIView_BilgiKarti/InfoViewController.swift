//
//  InfoViewController.swift
//  1_UIView_BilgiKarti
//
//  Created by VOLKAN EFE on 27.07.2025.
//

import SwiftUI

class InfoViewController: UIViewController {
    
    let message: String
    
    init(message: String) {
        self.message = message
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) { fatalError() }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let swiftUIView = InfoCardView(message: message)
        let hosting = UIHostingController(rootView: swiftUIView)
        
        addChild(hosting)
        hosting.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hosting.view)
        NSLayoutConstraint.activate([
            hosting.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hosting.view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            hosting.view.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            
        ])
        hosting.didMove(toParent: self)
    }
}
