//
//  ContentView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldShow: Bool = false
    var body: some View {
        ZStack{
            NavigationLink("", destination: MonitandoView().navigationBarBackButtonHidden(true) ,isActive: $shouldShow).buttonStyle(.borderless)
        }.onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.2) {
                shouldShow.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
