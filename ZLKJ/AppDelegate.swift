//
//  AppDelegate.swift
//  ZLKJ
//
//  Created by 熊俊杰 on 2017/3/1.
//  Copyright © 2017年 熊俊杰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //获取初次启动标志
        let sign:Bool = UserDefaults.standard.bool(forKey: "FirstStartSign")
        //如果没有获取不到，并设置其为true
        if(!sign){
            UserDefaults.standard.set(true, forKey: "FirstStartSign")
        }else{
            //获取到不是第一次启动，直接跳转主页面viewpage2
            //这句是获得Main.storyboard这个东西，我们的viewcontroller都在他里边，所以要先得到他。
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            //通过main的到我们的page2，addNewPage 就是我们填写的storyboard ID 别搞错了，后边得as ViewPage2Controller 是和你这个viewcontroller绑定的swift文件。
            let viewPage2 = storyboard.instantiateViewController(withIdentifier: "addNewPage") as! ViewPage2Controller
            
            //这个就没啥说的了
            self.window?.rootViewController = viewPage2
        }
        
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

