//
//  AppDelegate.swift
//  Bots Demo
//
//  Created by Connor Svrcek on 11/2/18.
//  Copyright © 2018 Connor Svrcek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window: UIWindow = self.window else {fatalError("no window")}
        
        window.rootViewController = UINavigationController(rootViewController: ViewController()) 
        window.makeKeyAndVisible()
        
        return true
    }

}

