//
//  SceneDelegate.swift
//  AMAD
//
//  Created by mohamed albohy on 3/20/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import SideMenuController
import UserNotifications
@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("Secne delegt")
        let rootVC = self.getViewController(fromStoryBoardNamed: "Auth", withIdentifier: "AuthChooser")
        let rootNavigationCOntroller = UINavigationController()
        rootNavigationCOntroller.setViewControllers([rootVC], animated: true)
        rootNavigationCOntroller.navigationBar
        rootNavigationCOntroller.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        rootNavigationCOntroller.navigationBar.shadowImage = UIImage()
        rootNavigationCOntroller.navigationBar.isTranslucent = true
        rootNavigationCOntroller.view.backgroundColor = .clear
        self.window?.rootViewController = rootNavigationCOntroller
        
        let center = UNUserNotificationCenter.current()
            let options :UNAuthorizationOptions = [.sound, .alert]
            
            center.requestAuthorization(options: options, completionHandler: {_,_ in })
            center.delegate = self

        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}



@available(iOS 13.0, *)
extension SceneDelegate:UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
    
}
