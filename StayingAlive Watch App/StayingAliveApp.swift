//
//  StayingAliveApp.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 22/11/22.
//

import SwiftUI

@main
struct StayingAlive_Watch_AppApp: App {
   
    @StateObject private var hikingManager = HikingManager()
    @StateObject private var persistence = Persistence()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(hikingManager)
                .environmentObject(persistence)
        }
    }
}
