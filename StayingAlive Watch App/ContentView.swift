//
//  ContentView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("is First Time") var isFirstTime = true
    
    var body: some View {
        if isFirstTime {
            PageView()
                .onAppear{
                    isFirstTime = false
                }
        } else {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
