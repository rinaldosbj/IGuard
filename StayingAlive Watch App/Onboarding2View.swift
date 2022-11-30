//
//  Onboarding2View.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct Onboarding2View: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("\(Text("IGuard").bold()) é um aplicativo que combina instruções de primeiros socorros com monitoramento ativo das suas funções vitais")
                .frame(width: 170, height: 140)
                .multilineTextAlignment(.center)
                Spacer(minLength: 30)
        }.overlay(
            Image("mikeVirado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(0.6)
                .offset(x: 78, y: 95)
                .overlay(
                Image("oio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.18)
                    .offset(x: 62, y: 81)
                )
                
            
        )
    }
}

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
