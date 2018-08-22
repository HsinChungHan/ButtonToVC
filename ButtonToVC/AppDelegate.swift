//
//  AppDelegate.swift
//  ButtonToVC
//
//  Created by 辛忠翰 on 2018/8/21.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        let firstVC = FirstViewController()
        window?.rootViewController = firstVC
        return true
    }
}
