//
//  AppDelegate.swift
//  Multilingual
//
//  Created by Ben on 11/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var bridge: RCTBridge?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    let jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle")!
    bridge = RCTBridge(bundleURL: jsCodeLocation, moduleProvider: nil, launchOptions: launchOptions)

    window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window?.backgroundColor = UIColor.whiteColor()
    window?.rootViewController = UINavigationController(rootViewController: ViewController())
    window?.makeKeyAndVisible()

    return true
  }

}
