//
//  AppDelegate.swift
//  Dekkeni
//
//  Created by Mark on 6/17/19.
//  Copyright © 2019 Dekkeni. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let storeStoryboard: UIStoryboard = UIStoryboard(name: "Store", bundle: nil)

        let leftMenuVC: MenuViewController = mainStoryboard.instantiateViewController(withIdentifier: "MenuVC") as! MenuViewController
  
        let centerVC: StoreViewController = storeStoryboard.instantiateViewController(withIdentifier: "StoreVC") as! StoreViewController
        
        let navVC = UINavigationController(rootViewController: centerVC)
        
        window?.rootViewController = FAPanelController()

        
        let rootVC: FAPanelController = window?.rootViewController as! FAPanelController
        
        _ = rootVC.center(navVC).left(leftMenuVC)
        
        rootVC.leftPanelPosition = .back
        rootVC.configs.leftPanelWidth = 80
        rootVC.configs.bounceOnLeftPanelOpen = true
        rootVC.configs.panFromEdge = false
        
        UINavigationBar.appearance().barStyle = .blackOpaque
        UINavigationBar.appearance().tintColor = .white//UIColor(hue: 10, saturation: 90, brightness: 76, alpha: 1)
        
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)

        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

