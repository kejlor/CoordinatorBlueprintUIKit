//
//  Coordinator.swift
//  CoordinatorBlueprintUIKit
//
//  Created by Bartosz Wojtkowiak on 02/06/2023.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func startCoordinator()
    func makeViewController() -> UIViewController
}

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func startCoordinator() {
        navigationController.setViewControllers([makeViewController()], animated: true)
    }
    
    func makeViewController() -> UIViewController {
        ViewController()
    }
    
    func pushToNavController(_ vc: UIViewController) {
        navigationController.pushViewController(vc, animated: true)
    }
}
