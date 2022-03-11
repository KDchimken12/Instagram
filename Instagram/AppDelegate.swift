//
//  AppDelegate.swift
//  Instagram
//
//  Created by Khoa Doan on 3/3/22.
//

import UIKit
import Parse


@main
class AppDelegate: UIResponder, UIApplicationDelegate {


        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.

            // --- Copy this only
            
            let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "PywD1h3kOpHV4132C1QGSR9uViwVIXZoK88u5H0v" // <- UPDATE
                    $0.clientKey = "vEEwofyupC0HvYeC7toeSdFsitmlm1awxizI0nUr" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com"
            }
            Parse.initialize(with: parseConfig)
            
            // --- end copy
            

            return true
        
    }
    @IBAction func onLogoutButton(_ sender: Any) {
    
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier:"LoginViewController")
                                    
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
        delegate.window?.rootViewController = loginViewController}
    

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
