//
//  AppDelegate.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 04/03/2017.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let eventBus = EventBus()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

        print(eventBus.notifications())

        return true
    }
}
