//
//  AppDelegate.swift
//  AMAD
//
//  Created by mohamed albohy on 3/20/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import UserNotifications


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
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
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    

}



extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
    
}
