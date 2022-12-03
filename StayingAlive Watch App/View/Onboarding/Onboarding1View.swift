//
//  Onboarding1View.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct Onboarding1View: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        VStack (alignment: .center) {
            Text("Bem vindo ao ")
//                .offset(y: -5)
            Text("iGuard!")
//                .offset(y: -5)
                .bold()
            
            ZStack {
                Image("sem oio sem braco")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 12)
                
                Image("oio")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .offset(x: -5, y: -25)
                    .rotationEffect (Angle (degrees:
                    self.isAnimated ? 4 : -4), anchor: .center)
                    .animation(Animation.linear(duration: 1.5).repeatForever(), value: isAnimated)
                
                Image("braco")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .offset(x: 50, y: -25)
                    .rotationEffect(Angle (degrees:
                    self.isAnimated ? 3: -3), anchor:
                            .center)
                    .animation (Animation.linear (duration:
                                                    0.8) . repeatForever(), value: isAnimated)
            }
        }.onAppear {
            isAnimated = true
        }
    }
}

struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}
