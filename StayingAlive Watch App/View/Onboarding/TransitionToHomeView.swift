//
//  TransitionToHomeView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct TransitionToHomeView: View {
    @State private var shouldShow: Bool = false
    @State var isAnimated = false
    var body: some View {
        ZStack{
            NavigationLink("", destination: HomeView().navigationBarBackButtonHidden(true) ,isActive: $shouldShow).buttonStyle(.borderless)
            VStack (alignment: .center) {
                ZStack {
                    Image("sem oio sem braco")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 12)
                    
                    Image("oio")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .offset(x: -5, y: -25)
                        .scaleEffect(1.2)
                        .rotationEffect (Angle (degrees:
                        self.isAnimated ? 4 : -4), anchor: .center)
                        .animation(Animation.linear(duration: 0.8).repeatForever(), value: isAnimated)
                    
                    Image("braco")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .offset(x: 50, y: -25)
                        .scaleEffect(1.2)
                        .rotationEffect(Angle (degrees:
                        self.isAnimated ? 3: -3), anchor:
                                .center)
                        .animation (Animation.linear (duration:
                                                        0.8) . repeatForever(), value: isAnimated)
                }
                Text("Vamos nessa!")
                    .bold()
            }
        }.onAppear() {
            isAnimated = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                shouldShow.toggle()
            }
        }
    }
}

struct TransitionToHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionToHomeView()
    }
}
