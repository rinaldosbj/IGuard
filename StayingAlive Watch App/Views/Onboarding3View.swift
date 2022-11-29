//
//  Onboarding3View.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct Onboarding3View: View {
    @State var arraste = 90
    var body: some View {
        VStack{
            VStack{
                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))
                
                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))
                
                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))

                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))

                Color(.blue)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))

                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))
                
                Color(.white)
                    .cornerRadius(10)
                    .frame(height: 30)
                    .padding(.horizontal,10)
                    .offset(x: 0, y: CGFloat(arraste))
                    .animation(.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true))
                
            }.frame(height: 75)
                .clipped()
            Text("Navegue pelas instruções de \(Text("primeiros socorros").bold()) para encontrar o seu ”perrengue”")
                .multilineTextAlignment(.center)
                .padding(.top,10)
        }.onAppear(){
            arraste = -80
        }
    }
}

struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
