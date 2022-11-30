//
//  Onboarding1View.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct Onboarding1View: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("Bem vindo ao ")
//                .offset(y: -5)
            Text("IGuard!")
//                .offset(y: -5)
                .bold()
            HStack (alignment: .center) {
                Image("sem oio sem braco")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 12)
            }
            .overlay(
                Image("oio")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .offset(x: -5, y: -25)
                    .overlay(
                    Image("braco")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .offset(x: 49, y: -27)
                    )
            )
        }
    }
}

struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}
