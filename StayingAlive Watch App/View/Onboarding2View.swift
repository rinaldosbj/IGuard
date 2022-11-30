//
//  Onboarding2View.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct Onboarding2View: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        VStack (alignment: .center) {
            Text("\(Text("IGuard").bold()) é um aplicativo que combina instruções de primeiros socorros com monitoramento ativo das suas funções vitais")
                .frame(width: 170, height: 138)
                .multilineTextAlignment(.center)
                .offset(y: 7)
            
            ZStack {
                Image("mikeVirado")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(3)
                    .offset(x: 78, y: 22)
                
                Image("oio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.8)
                    .frame(width: 35, height: 35)
                    .offset(x: 60, y: 11)
                    .rotationEffect (Angle (degrees:
                    self.isAnimated ? 3 : -3), anchor: .center)
                    .animation(Animation.linear(duration: 1.5).repeatForever(), value: isAnimated)


            }
        }.onAppear {
            isAnimated = true
        }
    }
}

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
