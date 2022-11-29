//
//  TransitionView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct TransitionView: View {
    @State private var shouldShow: Bool = false
    var body: some View {
        ZStack{
            NavigationLink("", destination: MonitandoView().navigationBarBackButtonHidden(true) ,isActive: $shouldShow).buttonStyle(.borderless)
            ProgressView()
        }.onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.2) {
                shouldShow.toggle()
            }
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
