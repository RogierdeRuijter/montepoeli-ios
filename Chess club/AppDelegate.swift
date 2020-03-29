//
//  AppDelegate.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import UIKit
import RestEssentials

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var httpCookieStorage : HTTPCookieStorage = HTTPCookieStorage.init();
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        struct signInReponse: Codable {
        }
        
        
        struct gameReponse: Codable {
            let statusCode: Int
        }
        
        struct PotentialUser: Codable {
            let username: String
            let password: String
        }

        guard let rest = RestController.make(urlString: "https://localhost:3000/api") else {
           print("Bad URL")
           return true
        }
        
        var restOptions: RestOptions = RestOptions();
        restOptions.httpHeaders = ["Content-Type": "application/json"]
        
        let user = ["username": "user", "password": "test"]
        rest.post(user, withDeserializer: VoidDeserializer(), at: "signIn", options: restOptions) { result, httpResponse in
            rest.get(withDeserializer: JSONDeserializer(), at: "game") { result, httpResponse in
                do {
                    let response = try result.value()
                    print(response) // "http://httpbin.org/get"
                } catch {
                    print("Error performing GET: \(error)")
                }
            }
        }
    
        return true
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

