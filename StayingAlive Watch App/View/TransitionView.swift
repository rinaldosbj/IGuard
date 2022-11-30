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
            
            VStack (alignment: .center) {
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
                Text("Vamos nessa!")
                    .bold()
            }
        }.onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
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
