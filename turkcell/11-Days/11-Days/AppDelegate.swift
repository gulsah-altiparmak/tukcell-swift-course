//
//  AppDelegate.swift
//  11-Days
//
//  Created by Gulsah Altiparmak on 26.01.2021.
//

import UIKit
//1. madde import al
import UserNotifications
@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    //doğrulanmış notification nesnesini elde ettik.
    let notification = UNUserNotificationCenter.current()
    
    static var notiStatus = false
    
    //kullanıcı uygulama iconuna tıkladığı an çalışır
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
       //2. madde
        notification.delegate = self
        //completionhandler işlem tamamlandığında problem olup olmadığını
        notification.requestAuthorization(options: [.alert,.badge,.sound]) { (status, error) in
            // statusten ve errordan ne geldi kontrol et
            if status{
                print("status: \(status) ")
                AppDelegate.notiStatus = true
            }else{
                //print("error:", (error?.localizedDescription)!)
                print("Notification Permission False")
                
            }
        }
        
        
        return true
    }
    //
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

