//
//  AppDelegate.swift
//  CountlyApp
//
//  Created by Ben Chatelain on 3/29/18.
//  Copyright © 2018 Log Dash G, LLC. All rights reserved.
//

import Countly
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let config = CountlyConfig()
        config.appKey = "220e1e4062c98195840da4754f84fa528f049429"
        config.host = "https://kp.count.ly"
        config.features = [CLYPushNotifications, CLYCrashReporting, CLYAutoViewTracking]

        Countly.sharedInstance().start(with: config)
        Countly.sharedInstance().askForNotificationPermission()

        return true
    }
}
