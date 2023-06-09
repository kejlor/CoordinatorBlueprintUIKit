//
//  AppDelegate.swift
//  CoordinatorBlueprintUIKit
//
//  Created by Bartosz Wojtkowiak on 02/06/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: MainCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        let vc = ViewController(coordinator: coordinator)
        vc.coordinator = coordinator
        coordinator?.pushToNavController(vc)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
}

