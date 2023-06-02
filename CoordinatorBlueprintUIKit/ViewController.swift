//
//  ViewController.swift
//  CoordinatorBlueprintUIKit
//
//  Created by Bartosz Wojtkowiak on 02/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    let stackView = UIStackView()
    let label = UILabel()
    let anotherViewButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First screen"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        anotherViewButton.translatesAutoresizingMaskIntoConstraints = false
        anotherViewButton.configuration = .filled()
        anotherViewButton.configuration?.imagePadding = 8 // for indicator spacing
        anotherViewButton.setTitle("Another view", for: [])
        anotherViewButton.addTarget(self, action: #selector(anotherViewTapped), for: .primaryActionTriggered)
    }
    
    func layout() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(anotherViewButton
        )
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

extension ViewController {
    @objc func anotherViewTapped(sender: UIButton) {
        coordinator?.pushToNavController(DifferentViewController())
        if coordinator == nil {
            print("nil")
        }
    }
}
