//
//  SceneDelegate.swift
//  TaskList
//
//  Created by Vsevolod Lashin on 20.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private let storageManager = StorageManager.shared

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController.init(rootViewController: TaskListViewController())
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        storageManager.saveContext()
    }


}

