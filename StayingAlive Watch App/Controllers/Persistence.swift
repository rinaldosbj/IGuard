//
//  Persistence.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 01/12/22.
//

import Foundation

class Persistence : ObservableObject {
    @Published var isFirstTime: String = UserDefaults.standard.string(forKey: "isFirstTime") ?? "yes" {
        didSet {
            UserDefaults.standard.set(isFirstTime, forKey: "isFirstTime")
        }
    }
}
