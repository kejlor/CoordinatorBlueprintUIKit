//
//  DifferentViewController.swift
//  CoordinatorBlueprintUIKit
//
//  Created by Bartosz Wojtkowiak on 02/06/2023.
//

import UIKit

class DifferentViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    let stackView = UIStackView()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DifferentViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Another"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
    }
    
    func layout() {
        stackView.addArrangedSubview(label)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

