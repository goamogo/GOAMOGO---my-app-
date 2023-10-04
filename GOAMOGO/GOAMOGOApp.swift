//
//  GOAMOGOApp.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/26.
//

import SwiftUI


@main
struct GOAMOGOApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            MainPage()
                .environmentObject(vm)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      
    return true
  }
}
    
