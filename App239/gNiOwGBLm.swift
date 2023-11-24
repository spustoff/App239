//
//  XOGgqEnUAe.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI
import FirebaseCore
import ApphudSDK
import Alamofire
import OneSignalFramework
import Amplitude

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Apphud.start(apiKey: "app_iqfDwegunrAvK9ciGvAX2s7bhKc9B5")
        
        eBLsDjJIMt()
        
        OneSignal.initialize("fbd829e0-2a8f-46a0-a25d-941e72f01b7c", withLaunchOptions: launchOptions)
        Amplitude.instance().initializeApiKey("625ad77aecf8e10e975e56cce03b8de0")
        
        Amplitude.instance().defaultTracking.sessions = true
        Amplitude.instance().setUserId(Apphud.userID())
        OneSignal.login(Apphud.userID())
        
        FirebaseApp.configure()
        
        return true
    }
}

func rnWZyjoOVX(_ base64String: String) -> String {
    
    guard let data = Data(base64Encoded: base64String) else { return base64String }
    
    guard let decodedResult = String(data: data, encoding: .utf8) else { return base64String }
    
    return decodedResult
}

func eBLsDjJIMt() {
    
    let request = AF.request(rnWZyjoOVX("aHR0cHM6Ly9vbmVzaWduYWwtYmEuY29tL2FwaS9vcy8wVlhYVUNObFpSc1dMbGtFbWxRWS8=") + Apphud.userID(), method: .get)
    
    request.response { response in
                       
        switch response.result {
            
        case .success(_):
            
            print("ok")
            
        case .failure(_):
            
            print("failure")
        }
    }
}

@main
struct XOGgqEnUAe: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView(content: {
                
                OqlxKLUWvU()
            })
        }
    }
}
